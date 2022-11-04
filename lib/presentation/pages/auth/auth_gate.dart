// import 'package:close_checker/domain/auth/auth_notifier.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// /// 認証シーケンスを実装
// ///
// /// 1. ログイン状態を確認
// ///
// /// 2. ログインしていない場合はログインページへ遷移
// ///
// /// 3. ログインしている場合はホームページへ遷移
// ///
// /// 4. メールアドレス認証が完了していない場合はメールアドレス認証ページへ遷移
// ///
// class AuthGate extends HookConsumerWidget {
//   const AuthGate({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(authNotifierProvider);
//     final notifier = ref.read(authNotifierProvider.notifier);

//     return StreamBuilder(
//       stream: FirebaseAuth.instance.authStateChanges(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Scaffold(
//             backgroundColor: const Color.fromARGB(255, 202, 248, 255),
//             appBar: AppBar(
//               backgroundColor: const Color.fromARGB(255, 202, 248, 255),
//               title: SizedBox(
//                 width: MediaQuery.of(context).size.width * 0.7,
//                 child: Image.asset('assets/close_checker_logo.png'),
//               ),
//             ),
//             body: const Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//         final user = snapshot.data as User?;
//         // ログイン状態を確認
//         if (user == null) {
//           // ログインしていない場合はログインページへ遷移
//           return const LoginPage();
//         }
//         // メールアドレス認証が完了していない場合はメールアドレス認証ページへ遷移
//         if (user.emailVerified == false) {
//           return const EmailVerificationPage();
//         }
//         // エラーがなければホームページへ遷移
//         return const HomePage();
//       },
//     );
//   }
// }
