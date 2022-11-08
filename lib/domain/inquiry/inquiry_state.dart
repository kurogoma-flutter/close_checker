import 'package:freezed_annotation/freezed_annotation.dart';

part 'inquiry_state.freezed.dart';

@freezed
class InquiryState with _$InquiryState {
  const factory InquiryState({
    @Default('選択してください') String title,
    @Default('') String content,
  }) = _InquiryState;
}
