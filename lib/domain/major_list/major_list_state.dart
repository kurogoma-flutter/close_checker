import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'major_list_state.freezed.dart';

@freezed
class MajorListState with _$MajorListState {
  const factory MajorListState({
    @Default(<MajorListModel>[]) List<MajorListModel> majorList,
  }) = _MajorListState;
}
