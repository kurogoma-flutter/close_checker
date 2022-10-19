import 'package:cloud_firestore/cloud_firestore.dart';

/// CloudFirestoreとの通信を行うクラス
class CloudFirestoreDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// 指定したコレクションのドキュメントを取得する
  Future<List<Map<String, dynamic>>> getDocuments({
    required String collection,
  }) async {
    final snapshot = await _firestore.collection(collection).get();
    final documents = snapshot.docs.map((e) => e.data()).toList();
    return documents;
  }

  /// Streamでコレクションを取得する
  Stream<List<Map<String, dynamic>>> getDocumentsStream({
    required String collection,
  }) {
    return _firestore.collection(collection).snapshots().map((snapshot) {
      return snapshot.docs.map((e) => e.data()).toList();
    });
  }

  /// [field]で指定したフィールドの値が[value]と一致するドキュメントを取得する
  Future<List<Map<String, dynamic>>> getDocumentsByQuery({
    required String collection,
    required String field,
    required dynamic value,
  }) async {
    final snapshot = await _firestore
        .collection(collection)
        .where(field, isEqualTo: value)
        .get();
    final documents = snapshot.docs.map((e) => e.data()).toList();
    return documents;
  }

  /// [field]で指定したフィールドの日付がcreatedAt以降のドキュメントを取得する
  Future<List<Map<String, dynamic>>> getDocumentsByCreatedAt({
    required String collection,
    required DateTime time,
  }) async {
    final snapshot = await _firestore
        .collection(collection)
        .where('createdAt', isGreaterThanOrEqualTo: time)
        .get();
    final documents = snapshot.docs.map((e) => e.data()).toList();
    return documents;
  }

  /// 指定したコレクションのドキュメントを追加する
  Future<void> addDocument({
    required String collection,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collection).add(data);
  }

  /// setで指定したドキュメントを追加する
  Future<void> setDocument({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collection).doc(documentId).set(data);
  }

  /// 指定したコレクションのドキュメントを更新する
  Future<void> updateDocument({
    required String collection,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    await _firestore.collection(collection).doc(documentId).update(data);
  }

  /// 指定したコレクションのドキュメントを削除する
  Future<void> deleteDocument({
    required String collection,
    required String documentId,
  }) async {
    await _firestore.collection(collection).doc(documentId).delete();
  }
}
