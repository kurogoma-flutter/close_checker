import 'package:hooks_riverpod/hooks_riverpod.dart';

final authService = Provider.autoDispose((ref) => AuthService(
    // authRepository: ref.read(authRepository),
    ));

class AuthService {
  AuthService(
      // {
      // required this.majorListRepository,
      // }
      );
}
