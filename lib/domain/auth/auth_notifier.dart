import 'package:close_checker/domain/auth/auth_service.dart';
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
}
