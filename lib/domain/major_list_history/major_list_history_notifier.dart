import 'package:close_checker/domain/major_list_history/major_list_history_service.dart';
import 'package:close_checker/domain/major_list_history/major_list_history_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 大分類履歴（majorListHistory）のnotifier
final majorListHistoryNotifierProvider =
    StateNotifierProvider<MajorListNotifier, MajorListHistoryState>(
  (ref) => MajorListNotifier(
    majorListHistoryService: ref.read(majorListHistoryService),
  )..init(),
);

class MajorListNotifier extends StateNotifier<MajorListHistoryState> {
  MajorListNotifier({
    required this.majorListHistoryService,
  }) : super(const MajorListHistoryState());

  final MajorListHistoryService majorListHistoryService;

  void init() {}
}
