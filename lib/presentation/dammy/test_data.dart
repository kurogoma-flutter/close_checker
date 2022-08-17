import 'package:close_checker/data/model/major_list_model.dart';
import 'package:close_checker/data/model/minor_list_model.dart';

List<MinorListModel> dammyCheckList = [
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '',
    content: '重複コードが無いか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '😈',
    content: '不要なコメントは無いか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '😈',
    content: 'コメントは充足しているか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '',
    content: '不要なコードはないか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '💡',
    content: 'リファクタ要素はないか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '💡',
    content: '命名ルールに準拠しているか',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '😈',
    content: '責務は適切か',
    isDone: false,
    isDeleted: false,
  ),
  MinorListModel(
    checkId: 'xxxxxx',
    listId: 'yyyyyy',
    icon: '💡',
    content:
        'コミットログは綺麗になっているかコミットログは綺麗になっているかコミットログは綺麗になっているかコミットログは綺麗になっているかコミットログは綺麗になっているか',
    isDone: false,
    isDeleted: false,
  ),
];

List<MajorListModel> dammyMajorList = [
  MajorListModel(
    listId: 'yyyyyy',
    content: 'フリータスクのPR提出時',
    createdUserId: 'XXXXXXXX',
    isDeleted: false,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: '採点チェック時',
    createdUserId: 'XXXXXXXX',
    isDeleted: false,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: 'レビュー提出前チェック',
    createdUserId: 'XXXXXXXX',
    isDeleted: false,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: 'デイリータスク',
    createdUserId: 'XXXXXXXX',
    isDeleted: false,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: 'data MR作成前チェック',
    createdUserId: 'XXXXXXXX',
    isDeleted: false,
  ),
];

List<MajorListModel> dammyDeletedMajorList = [
  MajorListModel(
    listId: 'yyyyyy',
    content: 'フリータスクのPR提出時',
    createdUserId: 'XXXXXXXX',
    isDeleted: true,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: '採点チェック時',
    createdUserId: 'XXXXXXXX',
    isDeleted: true,
  ),
  MajorListModel(
    listId: 'yyyyyy',
    content: 'レビュー提出前チェック',
    createdUserId: 'XXXXXXXX',
    isDeleted: true,
  ),
];
