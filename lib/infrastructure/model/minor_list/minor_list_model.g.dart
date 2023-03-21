// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'minor_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinorListModel _$$_MinorListModelFromJson(Map<String, dynamic> json) =>
    _$_MinorListModel(
      checkId: json['checkId'] as String,
      listId: json['listId'] as String,
      icon: json['icon'] as String,
      content: json['content'] as String,
      isDone: json['isDone'] as bool,
      isDeleted: json['isDeleted'] as bool,
      createdAt: const CreatedAtField().fromJson(json['createdAt']),
      updatedAt: const UpdatedAtField().fromJson(json['updatedAt']),
    );

Map<String, dynamic> _$$_MinorListModelToJson(_$_MinorListModel instance) =>
    <String, dynamic>{
      'checkId': instance.checkId,
      'listId': instance.listId,
      'icon': instance.icon,
      'content': instance.content,
      'isDone': instance.isDone,
      'isDeleted': instance.isDeleted,
      'createdAt': const CreatedAtField().toJson(instance.createdAt),
      'updatedAt': const UpdatedAtField().toJson(instance.updatedAt),
    };
