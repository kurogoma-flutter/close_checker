import 'package:close_checker/infrastructure/data_source/remote_data_source/firebase/firebase_auth/firebase_auth_data_source.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authRepository = Provider((ref) => AuthRepository(
      firebaseAuthDataSource: FirebaseAuthDataSource(),
    ));

/// FirebaseAuthDataSourceを使って認証系の処理を行う
class AuthRepository {
  AuthRepository({
    required this.firebaseAuthDataSource,
  });

  final FirebaseAuthDataSource firebaseAuthDataSource;

  /// ユーザーのサインインを行う
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await firebaseAuthDataSource.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /// ユーザーのサインアップを行う
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await firebaseAuthDataSource.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /// ユーザーのサインアウトを行う
  Future<void> signOut() async {
    await firebaseAuthDataSource.signOut();
  }

  /// ユーザーのサインイン状態を確認する
  Future<bool> isSignedIn() async {
    final isSignedIn = await firebaseAuthDataSource.isSignedIn();
    return isSignedIn;
  }

  /// ユーザーのメールアドレスを変更する
  Future<void> changeEmail({required String email}) async {
    await firebaseAuthDataSource.changeEmail(email: email);
  }

  /// ユーザーのパスワードを変更する
  Future<void> changePassword({required String password}) async {
    await firebaseAuthDataSource.changePassword(password: password);
  }

  /// ユーザーのメールアドレスを変更する
  Future<void> changeEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await firebaseAuthDataSource.changeEmail(email: email);
  }

  /// ユーザー情報の取得
  Future<User?> fetchCurrentUser() async {
    final currentUser = await firebaseAuthDataSource.fetchCurrentUser();
    return currentUser;
  }

  /// ユーザーアカウントの停止
  Future<void> deleteUser() async {
    await firebaseAuthDataSource.deleteUser();
  }

  /// パスワードリセットメールの送信
  Future<void> sendPasswordResetEmail({required String email}) async {
    await firebaseAuthDataSource.sendPasswordResetEmail(email: email);
  }

  /// メールアドレスの確認
  Future<void> sendEmailVerification() async {
    await firebaseAuthDataSource.verifyEmail();
  }

  /// メールアドレスの確認状態の取得
  Future<bool> isEmailVerified() async {
    final isEmailVerified = await firebaseAuthDataSource.isEmailVerified();
    return isEmailVerified;
  }
}
