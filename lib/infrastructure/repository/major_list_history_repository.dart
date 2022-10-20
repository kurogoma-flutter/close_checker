import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/cloud_firestore/cloud_firestore_data_source.dart';
import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListHistoryRepository = Provider((ref) => MajorListHistoryRepository(
      cloudFirestoreDataSource: CloudFirestoreDataSource(),
    ));

class MajorListHistoryRepository {
  MajorListHistoryRepository({
    required this.cloudFirestoreDataSource,
  });

  final CloudFirestoreDataSource cloudFirestoreDataSource;

  /// [userId]で指定したユーザーの持つMajorListを取得する
  ///
  /// 削除履歴のため、[isDeleted]がtrueのものを取得する
  Future<List<MajorListModel>> fetchMajorListModels(String userId) async {
    final documentList = await cloudFirestoreDataSource.getDocumentsMultiQuery(
      collection: 'majorList',
      firstField: {
        'field': 'userId',
        'value': userId,
      },
      secondField: {
        'field': 'isDeleted',
        'value': true,
      },
    );
    return documentList
        .map((mapData) => MajorListModel.fromMap(mapData))
        .toList();
  }

  /// MajorListHistoryを復元する
  Future<void> setMajorListModel(MajorListModel majorListModel) async {
    majorListModel = majorListModel.copyWith(isDeleted: false);
    // Firestoreに追加
    await cloudFirestoreDataSource.setDocument(
      collection: 'majorListHistory',
      documentId: majorListModel.listId,
      data: majorListModel.toJson(),
    );
  }

  /// MajorListHistoryを削除する
  Future<void> deleteMajorListModel(MajorListModel majorListModel) async {
    // Firestoreから削除
    await cloudFirestoreDataSource.deleteDocument(
      collection: 'majorListHistory',
      documentId: majorListModel.listId,
    );
  }
}
