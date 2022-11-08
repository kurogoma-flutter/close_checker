import 'package:close_checker/infrastructure/model/firebase_timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'inquiry_model.freezed.dart';

part 'inquiry_model.g.dart';

@freezed
abstract class InquiryModel with _$InquiryModel {
  const factory InquiryModel({
    required final String inquiryId,
    required final String label,
    required final String content,
    required final String createdUserId,
    required final bool isReplied,
    @CreatedAtField() DateTime? createdAt,
  }) = _InquiryModel;

  factory InquiryModel.fromJson(Map<String, dynamic> json) =>
      _$InquiryModelFromJson(json);

  factory InquiryModel.initialData() => InquiryModel(
        inquiryId: const Uuid().v1(),
        label: '選択してください',
        content: '',
        createdUserId: '',
        isReplied: false,
      );

  factory InquiryModel.fromMap(Map<String, dynamic> data) => InquiryModel(
        inquiryId: data['inquiryId'] as String,
        label: data['label'] as String,
        content: data['content'] as String,
        createdUserId: data['createdUserId'] as String,
        isReplied: data['isReplied'] as bool,
        createdAt: data['createdAt'] as DateTime?,
      );
}
