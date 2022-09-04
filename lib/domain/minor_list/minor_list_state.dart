import 'package:close_checker/infrastructure/model/minor_list/minor_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'minor_list_state.freezed.dart';

@freezed
class MinorListState with _$MinorListState {
  const factory MinorListState({
    @Default(<MinorListModel>[]) List<MinorListModel> minorList,
  }) = _MinorListState;
}
