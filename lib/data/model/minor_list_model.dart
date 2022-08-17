// 📦 Package imports:
import 'package:uuid/uuid.dart';

class MinorListModel {
  MinorListModel({
    required this.checkId,
    required this.listId,
    required this.icon,
    required this.content,
    required this.isDone,
    required this.isDeleted,
  });

  factory MinorListModel.fromMap(Map<String, dynamic> data) => MinorListModel(
        checkId: data['checkId'] as String,
        listId: data['listId'] as String,
        icon: data['icon'] as String,
        content: data['content'] as String,
        isDone: data['isDone'] as bool,
        isDeleted: data['isDeleted'] as bool,
      );

  factory MinorListModel.initialData() => MinorListModel(
        checkId: const Uuid().v4(),
        listId: '',
        icon: '',
        content: '',
        isDone: false,
        isDeleted: false,
      );

  String checkId;
  String listId;
  String icon;
  String content;
  bool isDone;
  bool isDeleted;

  Map<String, dynamic> toMap() => {
        'checkId': checkId,
        'listId': listId,
        'icon': icon,
        'content': content,
        'isDone': isDone,
        'isDeleted': isDeleted,
      };
}
