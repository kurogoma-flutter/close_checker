import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cloudFirestoreServiceProvider = Provider<CloudFirestoreService>(
  (_) => CloudFirestoreService(),
);

class CloudFirestoreService {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> getCollectionReference(
          String path) =>
      _firebaseFirestore.collection(path);

  /// データを追加する
  ///
  /// [path] コレクションのパス
  ///
  /// [data] 追加するデータ
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final reference = _firebaseFirestore.collection(path);
    await reference.add(data);
  }

  /// データを更新 or 追加する
  ///
  /// [path] コレクションのパス
  ///
  /// [data] 更新するデータ
  ///
  Future<void> setData({
    required String path,
    required Map<String, dynamic> data,
    bool merge = true,
  }) async {
    final reference = _firebaseFirestore.doc(path);
    await reference.set(
      data,
      SetOptions(merge: merge),
    );
  }

  /// データを更新する
  ///
  /// [path] ドキュメントのパス
  ///
  /// [data] 更新するデータ
  ///
  Future<void> updateData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final reference = FirebaseFirestore.instance.doc(path);
    await reference.update(data);
  }

  Future<void> deleteData({required String path}) async {
    final reference = _firebaseFirestore.doc(path);
    await reference.delete();
  }

  /// コレクション単位のStreamを取得する
  ///
  /// [path] コレクションのパス
  ///
  /// [queryBuilder] クエリを設定する関数
  ///
  /// [sort] ソートするフィールド名
  ///
  Stream<List<T>> collectionStream<T>({
    required String path,
    required T Function(Map<String, dynamic> data, String documentID) builder,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>> query)?
        queryBuilder,
    int Function(T lhs, T rhs)? sort,
  }) {
    Query<Map<String, dynamic>> query = _firebaseFirestore.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map(
            (snapshot) => builder(snapshot.data(), snapshot.id),
          )
          .where((value) => value != null)
          .toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }

  /// コレクション単位でのデータ取得
  ///
  /// [path] コレクションのパス
  ///
  /// [builder] データを変換する関数
  ///
  /// [queryBuilder] クエリを組み立てる関数
  ///
  /// [sort] ソートする関数
  ///
  Future<List<T>> collectionFuture<T>({
    required String path,
    required T Function(Map<String, dynamic> data, String documentID) builder,
    Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>> query)?
        queryBuilder,
  }) async {
    Query<Map<String, dynamic>> query = _firebaseFirestore.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final querySnapshot = await query.get();
    return querySnapshot.docs
        .map(
          (snapshot) => builder(snapshot.data(), snapshot.id),
        )
        .where((value) => value != null)
        .toList();
  }

  /// ドキュメントのストリームを取得する
  ///
  /// [path] ドキュメントのパス
  ///
  /// [builder] ドキュメントのデータを変換する関数（Map変換など）
  ///
  Stream<T> documentStream<T>({
    required String path,
    required T Function(Map<String, dynamic>? data, String documentID) builder,
  }) {
    final reference = _firebaseFirestore.doc(path);
    final snapshots = reference.snapshots();
    return snapshots.map(
      (snapshot) => builder(snapshot.data(), snapshot.id),
    );
  }

  /// 単一documentを取得する
  ///
  /// [path] documentのパス
  ///
  Future<DocumentSnapshot<Map<String, dynamic>>> fetchDocumentSnapshot({
    required String path,
  }) {
    final reference = _firebaseFirestore.doc(path);
    return reference.get();
  }

  /// documentが存在するかを確認する
  ///
  /// [path] documentのpath
  ///
  Future<bool> hasDocumentSnapshotExisted({
    required String path,
  }) async {
    final reference = await _firebaseFirestore.doc(path).get();
    return reference.exists;
  }
}
