import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/cloud_firestore/cloud_firestore_data_source.dart';
import 'package:close_checker/infrastructure/model/minor_list/minor_list_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final minorListRepository = Provider((ref) => MinorListRepository(
      cloudFirestoreDataSource: CloudFirestoreDataSource(),
    ));

class MinorListRepository {
  MinorListRepository({
    required this.cloudFirestoreDataSource,
  });

  final CloudFirestoreDataSource cloudFirestoreDataSource;

  /// [majorListId]配下のMinorListを取得する
  Future<List<MinorListModel>> fetchMinorListModels(String majorListId) async {
    final documentList = await cloudFirestoreDataSource.getDocuments(
      collection: 'majorList/$majorListId/minorList',
    );

    return documentList
        .map((mapData) => MinorListModel.fromMap(mapData))
        .toList();
  }

  /// MinorListを追加・更新する
  Future<void> setMinorListModel(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    // Firestoreに追加
    await cloudFirestoreDataSource.setDocument(
      collection: 'majorList/$majorListId/minorList',
      documentId: minorListModel.listId,
      data: minorListModel.toJson(),
    );
  }

  /// MinorListを削除する
  Future<void> deleteMinorListModel(
    String majorListId,
    MinorListModel minorListModel,
  ) async {
    minorListModel = minorListModel.copyWith(isDeleted: true);
    // Firestoreから削除
    await cloudFirestoreDataSource.deleteDocument(
      collection: 'majorList/$majorListId/minorList',
      documentId: minorListModel.listId,
    );
  }
}
