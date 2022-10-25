import 'package:close_checker/domain/minor_list/minor_list_service.dart';
import 'package:close_checker/domain/minor_list/minor_list_state.dart';
import 'package:close_checker/infrastructure/model/minor_list/minor_list_model.dart';
import 'package:close_checker/utility/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 小分類（minorList）のnotifier
final minorListNotifierProvider =
    StateNotifierProvider.autoDispose<MinorListNotifier, MinorListState>(
  (ref) => MinorListNotifier(
    minorListService: ref.read(minorListService),
  )..init(),
);

class MinorListNotifier extends StateNotifier<MinorListState> {
  MinorListNotifier({
    required this.minorListService,
  }) : super(const MinorListState());

  final MinorListService minorListService;

  void init() {}

  /// 小分類のリストを取得する
  Future<void> fetchMinorListModels(String majorListId) async {
    try {
      final minorListModels =
          await minorListService.fetchMinorListModels(majorListId);
      state = state.copyWith(
        minorList: minorListModels,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  /// 小分類を追加
  Future<void> addMinorList(String majorListId, String content) async {
    try {
      MinorListModel minorListModel = MinorListModel.initialData();
      minorListModel = minorListModel.copyWith(
        content: content,
      );
      // 視覚的に追加
      state = state.copyWith(
        minorList: [...state.minorList, minorListModel],
      );
      // Firestoreに更新
      await minorListService.setMinorListModel(majorListId, minorListModel);
    } catch (e) {
      logger.e(e);
    }
  }

  /// 小分類を更新
  Future<void> updateMinorList(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    try {
      // 視覚的に更新
      state = state.copyWith(
        minorList: state.minorList.map((e) {
          if (e.listId == minorListModel.listId) {
            return minorListModel;
          } else {
            return e;
          }
        }).toList(),
      );
      // Firestoreで更新
      await minorListService.setMinorListModel(majorListId, minorListModel);
    } catch (e) {
      logger.e(e);
    }
  }

  /// 小分類を削除する
  Future<void> deleteMinorList(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    try {
      // 視覚的に削除
      state = state.copyWith(
        minorList: state.minorList
            .where((element) => element.listId != minorListModel.listId)
            .toList(),
      );
      // Firestoreで削除
      await minorListService.deleteMinorListModel(majorListId, minorListModel);
    } catch (e) {
      logger.e(e);
    }
  }
}
