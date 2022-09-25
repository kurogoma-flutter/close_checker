import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

/// CloudStorageへのアクセスを行うDataSource
class CloudStorageDataSource {
  final FirebaseStorage _firebaseStorage;

  CloudStorageDataSource(this._firebaseStorage);

  /// ファイルをアップロードし、アップロードしたファイルのURLを取得する
  Future<String> uploadFile({required String path, required File file}) async {
    final ref = _firebaseStorage.ref(path);
    final uploadTask = ref.putFile(file);
    final snapshot = await uploadTask.whenComplete(() {});
    final url = await snapshot.ref.getDownloadURL();
    return url;
  }

  /// ファイルを削除する
  Future<void> deleteFile({required String path}) async {
    final ref = _firebaseStorage.ref(path);
    await ref.delete();
  }

  /// ファイルをダウンロードする
  Future<File> downloadFile({required String path}) async {
    final ref = _firebaseStorage.ref(path);
    final url = await ref.getDownloadURL();
    final file = File.fromUri(Uri.parse(url));
    return file;
  }

  /// ファイルが存在するかを確認する
  Future<bool> existsFile({required String path}) async {
    final ref = _firebaseStorage.ref(path);
    final exists = await ref.getMetadata();
    return exists.size != null;
  }
}
