import 'package:close_checker/domain/minor_list_history/minor_list_history_service.dart';
import 'package:close_checker/domain/minor_list_history/minor_list_history_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 小分類履歴（minorListHistory）のnotifier
final minorListHistoryNotifierProvider =
    StateNotifierProvider<MinorListNotifier, MinorListHistoryState>(
  (ref) => MinorListNotifier(
    minorListHistoryService: ref.read(minorListHistoryService),
  )..init(),
);

class MinorListNotifier extends StateNotifier<MinorListHistoryState> {
  MinorListNotifier({
    required this.minorListHistoryService,
  }) : super(const MinorListHistoryState());

  final MinorListHistoryService minorListHistoryService;

  void init() {}
}
