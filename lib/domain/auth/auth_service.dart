import 'package:close_checker/infrastructure/repository/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authService = Provider.autoDispose((ref) => AuthService(
      authRepository: ref.read(authRepository),
    ));

class AuthService {
  AuthService({
    required this.authRepository,
  });

  final AuthRepository authRepository;

  /// ユーザーのサインインを行う
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await authRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /// ユーザーのサインアップを行う
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await authRepository.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  /// ユーザーのサインアウトを行う
  Future<void> signOut() async {
    await authRepository.signOut();
  }

  /// ユーザーのサインイン状態を確認する
  Future<bool> isSignedIn() async {
    final isSignedIn = await authRepository.isSignedIn();
    return isSignedIn;
  }

  /// ユーザーのメールアドレスを変更する
  Future<void> changeEmail({required String email}) async {
    await authRepository.changeEmail(email: email);
  }

  /// ユーザーのパスワードを変更する
  Future<void> changePassword({required String password}) async {
    await authRepository.changePassword(password: password);
  }

  /// ユーザーの削除を行う
  Future<void> deleteUser() async {
    await authRepository.deleteUser();
  }

  /// ユーザーのメールアドレスの確認を行う
  Future<void> sendEmailVerification() async {
    await authRepository.sendEmailVerification();
  }

  /// ユーザーのメールアドレスの妥当性検証
  Future<bool> isEmailVerified() async {
    final isEmailVerified = await authRepository.isEmailVerified();
    return isEmailVerified;
  }

  /// ユーザーのパスワード再設定メールを送信する
  Future<void> sendPasswordResetEmail({required String email}) async {
    await authRepository.sendPasswordResetEmail(email: email);
  }

  /// ユーザー情報を取得する
  Future<User?> fetchCurrentUser() async {
    final user = await authRepository.fetchCurrentUser();
    return user;
  }
}
