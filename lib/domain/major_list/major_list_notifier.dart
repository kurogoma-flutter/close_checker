import 'package:close_checker/domain/major_list/major_list_service.dart';
import 'package:close_checker/domain/major_list/major_list_state.dart';
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
      await fetchMajorListModels();
    });
  }

  /// 大分類のリストを取得する
  Future<void> fetchMajorListModels() async {
    try {
      final majorListModels = await majorListService.fetchMajorListModels();
      state = state.copyWith(
        majorList: majorListModels,
      );
    } catch (e) {
      logger.e(e);
    }
  }
}
