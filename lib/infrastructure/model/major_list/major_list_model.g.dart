// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'major_list_model.dart';
// ignore_for_file: non_constant_identifier_names

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MajorListModel _$$_MajorListModelFromJson(Map<String, dynamic> json) =>
    _$_MajorListModel(
      listId: json['listId'] as String,
      content: json['content'] as String,
      createdUserId: json['createdUserId'] as String,
      isDeleted: json['isDeleted'] as bool,
      createdAt: const CreatedAtField().fromJson(json['createdAt']),
      updatedAt: const UpdatedAtField().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$_MajorListModelToJson(_$_MajorListModel instance) =>
    <String, dynamic>{
      'listId': instance.listId,
      'content': instance.content,
      'createdUserId': instance.createdUserId,
      'isDeleted': instance.isDeleted,
      'createdAt': const CreatedAtField().toJson(instance.createdAt),
      'updatedAt': const UpdatedAtField().toJson(instance.updatedAt),
    };
