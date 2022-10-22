import 'package:close_checker/domain/major_list/major_list_service.dart';
import 'package:close_checker/domain/major_list/major_list_state.dart';
import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:close_checker/utility/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 大分類（majorList）のnotifier
final majorListNotifierProvider =
    StateNotifierProvider.autoDispose<MajorListNotifier, MajorListState>(
  (ref) => MajorListNotifier(
    majorListService: ref.read(majorListService),
  )..init(),
);

class MajorListNotifier extends StateNotifier<MajorListState> {
  MajorListNotifier({
    required this.majorListService,
  }) : super(const MajorListState());

  final MajorListService majorListService;

  void init() {
    Future(() async {
      // await fetchMajorListModels();
    });
  }

  /// 大分類のリストを取得する
  Future<void> fetchMajorListModels() async {
    // TODO: FirebaseAuthのユーザーIDを取得する
    const userId = 'xxxxx';
    try {
      final majorListModels =
          await majorListService.fetchMajorListModels(userId);
      state = state.copyWith(
        majorList: majorListModels,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  /// 大分類を追加する
  ///
  /// [content] 入力した内容
  Future<void> addMajorListModel({
    required String content,
  }) async {
    // TODO: FirebaseAuthでログインしているユーザーのIDを取得する
    const createdUserId = 'xxxxxx';
    try {
      MajorListModel majorListModel = MajorListModel.initialData();
      // 入力値を反映
      majorListModel = majorListModel.copyWith(
        content: content,
        createdUserId: createdUserId,
      );
      // 視覚的にstateを更新
      state = state.copyWith(
        majorList: [...state.majorList, majorListModel],
      );
      // Firestoreに追加
      await majorListService.setMajorListModel(majorListModel);
    } catch (e) {
      logger.e(e);
    }
  }

  /// 大分類を更新する
  ///
  /// [majorListModel] 更新する大分類
  ///
  /// [content] 入力した内容
  Future<void> updateMajorListModel({
    required MajorListModel majorListModel,
    required String content,
  }) async {
    try {
      // 入力値を反映
      majorListModel = majorListModel.copyWith(
        content: content,
      );
      // 視覚的にstateを更新
      state = state.copyWith(
        majorList: state.majorList.map((model) {
          if (model.listId == majorListModel.listId) {
            return majorListModel;
          } else {
            return model;
          }
        }).toList(),
      );
      // Firestoreに更新
      await majorListService.setMajorListModel(majorListModel);
    } catch (e) {
      logger.e(e);
    }
  }

  /// 大分類を削除する（論理削除）
  Future<void> deleteMajorListModel({
    required MajorListModel majorListModel,
  }) async {
    try {
      majorListModel = majorListModel.copyWith(
        isDeleted: true,
      );
      // 視覚的にstateを更新
      state = state.copyWith(
        majorList: state.majorList
            .where((model) => model.listId != majorListModel.listId)
            .toList(),
      );
      // Firestoreに削除
      await majorListService.deleteMajorListModel(majorListModel);
    } catch (e) {
      logger.e(e);
    }
  }
}
