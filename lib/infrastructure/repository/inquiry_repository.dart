import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/cloud_firestore/cloud_firestore_data_source.dart';
import 'package:uuid/uuid.dart';

/// お問合せ送信をするためのリポジトリ
class InquiryRepository {
  InquiryRepository({
    required this.cloudFirestoreDataSource,
  });

  final CloudFirestoreDataSource cloudFirestoreDataSource;

  /// お問合せをFirestoreに送信する
  Future<void> sendInquiry(String inquiry, Map<String, dynamic> data) async {
    await cloudFirestoreDataSource.setDocument(
      collection: 'inquiry',
      documentId: const Uuid().v1(),
      data: data,
    );
  }
}
