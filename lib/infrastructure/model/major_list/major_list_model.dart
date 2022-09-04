import 'package:close_checker/infrastructure/model/firebase_timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'major_list_model.freezed.dart';

part 'major_list_model.g.dart';

@freezed
abstract class MajorListModel with _$MajorListModel {
  const factory MajorListModel({
    required final String listId,
    required final String content,
    required final String createdUserId,
    required final bool isDeleted,
    @CreatedAtField() DateTime? createdAt,
    @UpdatedAtField() DateTime? updatedAt,
  }) = _MajorListModel;

  factory MajorListModel.fromJson(Map<String, dynamic> json) =>
      _$MajorListModelFromJson(json);

  factory MajorListModel.initialData() => MajorListModel(
        listId: const Uuid().v1(),
        content: '',
        createdUserId: '',
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory MajorListModel.fromMap(Map<String, dynamic> data) => MajorListModel(
        listId: data['listId'] as String,
        content: data['content'] as String,
        createdUserId: data['createdUserId'] as String,
        isDeleted: data['isDeleted'] as bool,
        createdAt: DateTime.parse(data['createdAt']),
        updatedAt: DateTime.parse(data['updatedAt']),
      );
}
