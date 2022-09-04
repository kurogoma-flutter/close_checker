import 'package:close_checker/domain/minor_list/minor_list_service.dart';
import 'package:close_checker/domain/minor_list/minor_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 小分類（minorList）のnotifier
final minorListNotifierProvider =
    StateNotifierProvider<MinorListNotifier, MinorListState>(
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
}
