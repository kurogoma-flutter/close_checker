import 'package:close_checker/infrastructure/model/minor_list/minor_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'minor_list_history_state.freezed.dart';

@freezed
class MinorListHistoryState with _$MinorListHistoryState {
  const factory MinorListHistoryState({
    @Default(<MinorListModel>[]) List<MinorListModel> minorHistoryList,
  }) = _MinorListHistoryState;
}
