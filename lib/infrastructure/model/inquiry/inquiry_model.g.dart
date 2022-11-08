// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InquiryModel _$$_InquiryModelFromJson(Map<String, dynamic> json) =>
    _$_InquiryModel(
      inquiryId: json['inquiryId'] as String,
      label: json['label'] as String,
      content: json['content'] as String,
      createdUserId: json['createdUserId'] as String,
      isReplied: json['isReplied'] as bool,
      createdAt: const CreatedAtField().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$_InquiryModelToJson(_$_InquiryModel instance) =>
    <String, dynamic>{
      'inquiryId': instance.inquiryId,
      'label': instance.label,
      'content': instance.content,
      'createdUserId': instance.createdUserId,
      'isReplied': instance.isReplied,
      'createdAt': const CreatedAtField().toJson(instance.createdAt),
    };
