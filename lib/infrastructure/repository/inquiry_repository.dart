import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/cloud_firestore/cloud_firestore_data_source.dart';
import 'package:close_checker/infrastructure/model/inquiry/inquiry_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final inquiryRepository = Provider((ref) => InquiryRepository(
      cloudFirestoreDataSource: CloudFirestoreDataSource(),
    ));

/// お問合せ送信をするためのリポジトリ
class InquiryRepository {
  InquiryRepository({
    required this.cloudFirestoreDataSource,
  });

  final CloudFirestoreDataSource cloudFirestoreDataSource;

  /// お問合せをFirestoreに送信する
  Future<void> sendInquiry(InquiryModel data) async {
    await cloudFirestoreDataSource.setDocument(
      collection: 'inquiry',
      documentId: data.inquiryId,
      data: data.toJson(),
    );
  }
}
