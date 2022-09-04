import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'major_list_history_state.freezed.dart';

@freezed
class MajorListHistoryState with _$MajorListHistoryState {
  const factory MajorListHistoryState({
    @Default(<MajorListModel>[]) List<MajorListModel> majorHistoryList,
  }) = _MajorListHistoryState;
}
