import 'package:close_checker/domain/major_list_history/major_list_history_service.dart';
import 'package:close_checker/domain/major_list_history/major_list_history_state.dart';
import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:close_checker/utility/logger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 大分類履歴（majorListHistory）のnotifier
final majorListHistoryNotifierProvider =
    StateNotifierProvider.autoDispose<MajorListNotifier, MajorListHistoryState>(
  (ref) => MajorListNotifier(
    majorListHistoryService: ref.read(majorListHistoryService),
  )..init(),
);

class MajorListNotifier extends StateNotifier<MajorListHistoryState> {
  MajorListNotifier({
    required this.majorListHistoryService,
  }) : super(const MajorListHistoryState());

  final MajorListHistoryService majorListHistoryService;

  void init() {
    Future(() async {});
  }

  /// 大分類履歴のリストを取得する
  Future<void> fetchMajorListHistoryModels() async {
    // TODO: FirebaseAuthのユーザーIDを取得する
    const userId = 'xxxxx';
    try {
      final majorListModels =
          await majorListHistoryService.fetchMajorListHistoryModels(userId);
      state = state.copyWith(
        majorHistoryList: majorListModels,
      );
    } catch (e) {
      logger.e(e);
    }
  }

  /// 大分類履歴を復元する
  Future<void> addMajorListHistoryModel({
    required MajorListModel majorListModel,
  }) async {
    majorListModel = majorListModel.copyWith(
      isDeleted: false,
    );
    // 視覚的にstateを更新
    state = state.copyWith(
      majorHistoryList: [...state.majorHistoryList, majorListModel],
    );
    // DBに保存
    await majorListHistoryService.setMajorListModel(majorListModel);
  }

  /// 大分類履歴を削除する
  Future<void> deleteMajorListHistoryModel({
    required MajorListModel majorListModel,
  }) async {
    // 視覚的にstateを更新
    state = state.copyWith(
      majorHistoryList: state.majorHistoryList
          .where((element) => element.listId != majorListModel.listId)
          .toList(),
    );
    // DBに保存
    await majorListHistoryService.deleteMajorListModel(majorListModel);
  }
}
