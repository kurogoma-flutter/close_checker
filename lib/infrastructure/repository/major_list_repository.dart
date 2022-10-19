import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/cloud_firestore/cloud_firestore_data_source.dart';
import 'package:close_checker/infrastructure/model/major_list/major_list_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final majorListRepository = Provider((ref) => MajorListRepository(
      cloudFirestoreDataSource: CloudFirestoreDataSource(),
    ));

class MajorListRepository {
  MajorListRepository({
    required this.cloudFirestoreDataSource,
  });

  final CloudFirestoreDataSource cloudFirestoreDataSource;

  /// MajorListを取得する
  Future<List<MajorListModel>> fetchMajorListModels() async {
    final documentList = await cloudFirestoreDataSource.getDocuments(
      collection: 'majorList',
    );

    return documentList
        .map((mapData) => MajorListModel.fromMap(mapData))
        .toList();
  }
}
