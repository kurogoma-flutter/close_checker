// 📦 Package imports:
import 'package:uuid/uuid.dart';

class MajorListModel {
  MajorListModel({
    required this.listId,
    required this.content,
    required this.isDeleted,
  });

  factory MajorListModel.fromMap(Map<String, dynamic> data) => MajorListModel(
        listId: data['listId'] as String,
        content: data['content'] as String,
        isDeleted: data['isDeleted'] as bool,
      );

  factory MajorListModel.initialData() => MajorListModel(
        listId: const Uuid().v4(),
        content: '',
        isDeleted: false,
      );

  String listId;
  String content;
  bool isDeleted;

  Map<String, dynamic> toMap() => {
        'listId': listId,
        'content': content,
        'isDeleted': isDeleted,
      };
}
