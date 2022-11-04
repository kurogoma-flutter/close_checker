import 'package:close_checker/domain/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:close_checker/domain/auth/auth_state.dart';

final authNotifierProvider =
    StateNotifierProvider.autoDispose<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    authService: ref.read(authService),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier({
    required this.authService,
  }) : super(const AuthState());

  final AuthService authService;

  /// ユーザーのサインインを行う
  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのサインアップを行う
  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのサインアウトを行う
  Future<void> signOut() async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.signOut();
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのサインイン状態を確認する
  Future<bool> isSignedIn() async {
    state = state.copyWith(isLoading: true);
    try {
      final isSignedIn = await authService.isSignedIn();
      return isSignedIn;
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
    return false;
  }

  /// ユーザーのメールアドレスを変更する
  Future<void> changeEmail({required String email}) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.changeEmail(email: email);
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのパスワードを変更する
  Future<void> changePassword({required String password}) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.changePassword(password: password);
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのパスワードを再設定する
  Future<void> sendPasswordResetEmail({required String email}) async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのメールアドレスを確認する
  Future<void> sendEmailVerification() async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.sendEmailVerification();
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーのメールアドレスを確認する
  Future<bool> isEmailVerified() async {
    state = state.copyWith(isLoading: true);
    try {
      final isEmailVerified = await authService.isEmailVerified();
      return isEmailVerified;
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
    return false;
  }

  /// ユーザーの退会を行う
  Future<void> deleteUser() async {
    state = state.copyWith(isLoading: true);
    try {
      await authService.deleteUser();
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
  }

  /// ユーザーの情報を取得する
  Future<User?> fetchCurrentUser() async {
    state = state.copyWith(isLoading: true);
    try {
      final user = await authService.fetchCurrentUser();
      return user;
    } on FirebaseAuthException catch (_) {
      state = state.copyWith(
        hasError: true,
        isLoading: false,
      );
    }
    state = state.copyWith(
      hasError: false,
      isLoading: false,
    );
    return null;
  }
}
