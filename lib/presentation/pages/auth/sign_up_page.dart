import 'package:close_checker/presentation/common/base_scaffold_no_bnb.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffoldWithNoNav(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Center(
            child: SizedBox(
              height: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text('新規登録', style: TextStyle(fontSize: 28)),
                  const SizedBox(height: 40),
                  // メールアドレス入力フォーム
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'メールアドレス',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // パスワード入力フォーム
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'パスワード',
                    ),
                  ),
                  // パスワード確認用フォーム
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '再確認',
                    ),
                  ),
                  const SizedBox(height: 40),
                  // ログインボタン
                  const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      '新規登録',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // アカウント作成ボタン
                  TextButton(
                    onPressed: () => context.go('/login'),
                    child: const Text(
                      'ログインはこちら',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
