import 'package:close_checker/infrastructure/model/firebase_timestamp.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'minor_list_model.freezed.dart';

part 'minor_list_model.g.dart';

@freezed
abstract class MinorListModel with _$MinorListModel {
  const factory MinorListModel({
    required final String checkId,
    required final String listId,
    required final String icon,
    required final String content,
    required final bool isDone,
    required final bool isDeleted,
    @CreatedAtField() DateTime? createdAt,
    @UpdatedAtField() DateTime? updatedAt,
  }) = _MinorListModel;

  factory MinorListModel.fromJson(Map<String, dynamic> json) =>
      _$MinorListModelFromJson(json);

  factory MinorListModel.initialData() => MinorListModel(
        checkId: const Uuid().v1(),
        listId: '',
        icon: '',
        content: '',
        isDone: false,
        isDeleted: false,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  factory MinorListModel.fromMap(Map<String, dynamic> data) => MinorListModel(
        checkId: data['checkId'] as String,
        listId: data['listId'] as String,
        icon: data['icon'] as String,
        content: data['content'] as String,
        isDone: data['isDone'] as bool,
        isDeleted: data['isDeleted'] as bool,
        createdAt: DateTime.parse(data['createdAt']),
        updatedAt: DateTime.parse(data['updatedAt']),
      );
}
