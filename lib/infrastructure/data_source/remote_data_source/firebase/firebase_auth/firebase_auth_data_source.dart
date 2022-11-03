import 'package:firebase_auth/firebase_auth.dart';

/// FirebaseAuth（認証）系のデータソース
class FirebaseAuthDataSource {
  // FirebaseAuthのインスタンス
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  /// ユーザーのサインインを行う
  Future<UserCredential> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  /// ユーザーのサインアップを行う
  Future<UserCredential> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential;
  }

  /// ユーザーのサインアウトを行う
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  /// ユーザーのサインイン状態を確認する
  Future<bool> isSignedIn() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  /// ユーザーのメールアドレスを変更する
  Future<void> changeEmail({required String email}) async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      throw Exception('ユーザーが存在しません');
    }
    await currentUser.updateEmail(email);
  }

  /// ユーザーのパスワードを変更する
  Future<void> changePassword({required String password}) async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      throw Exception('ユーザーが存在しません');
    }
    await currentUser.updatePassword(password);
  }

  /// ユーザー情報の取得
  Future<User?> fetchCurrentUser() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser;
  }

  /// ユーザーアカウントの停止
  Future<void> deleteUser() async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      throw Exception('ユーザーが存在しません');
    }
    await currentUser.delete();
  }

  /// パスワードリセットメールを送信する
  Future<void> sendPasswordResetEmail({required String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  /// メールアドレスの確認を送る
  Future<void> verifyEmail() async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      throw Exception('ユーザーが存在しません');
    }
    await currentUser.sendEmailVerification();
  }

  /// メールアドレスの確認を行う
  Future<bool> isEmailVerified() async {
    final currentUser = _firebaseAuth.currentUser;
    if (currentUser == null) {
      throw Exception('ユーザーが存在しません');
    }
    return currentUser.emailVerified;
  }
}
