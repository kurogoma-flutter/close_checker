import 'package:close_checker/presentation/common/base_scaffold_no_bnb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';

/// ログインフォーム
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

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
                  const Text('ログイン', style: TextStyle(fontSize: 28)),
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
                  const SizedBox(height: 40),
                  // ログインボタン
                  const ElevatedButton(
                    onPressed: null,
                    child: Text(
                      'ログイン',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // アカウント作成ボタン
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      'アカウントを作成する',
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
