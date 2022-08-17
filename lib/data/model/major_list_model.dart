// 📦 Package imports:
import 'package:uuid/uuid.dart';

class MajorListModel {
  MajorListModel({
    required this.listId,
    required this.content,
    required this.createdUserId,
    required this.isDeleted,
  });

  factory MajorListModel.fromMap(Map<String, dynamic> data) => MajorListModel(
        listId: data['listId'] as String,
        content: data['content'] as String,
        createdUserId: data['createdUserId'] as String,
        isDeleted: data['isDeleted'] as bool,
      );

  factory MajorListModel.initialData() => MajorListModel(
        listId: const Uuid().v4(),
        content: '',
        createdUserId: '',
        isDeleted: false,
      );

  String listId;
  String content;
  String createdUserId;
  bool isDeleted;

  Map<String, dynamic> toMap() => {
        'listId': listId,
        'content': content,
        'createdUserId': createdUserId,
        'isDeleted': isDeleted,
      };
}
