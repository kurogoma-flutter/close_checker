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
        child: Column(
          children: const [
            // メールアドレス入力フォーム
            TextField(
              decoration: InputDecoration(
                hintText: 'メールアドレス',
              ),
            ),
            // パスワード入力フォーム
            TextField(
              decoration: InputDecoration(
                hintText: 'パスワード',
              ),
            ),
            // ログインボタン
            ElevatedButton(
              onPressed: null,
              child: Text('ログイン'),
            ),
            // アカウント作成ボタン
            TextButton(
              onPressed: null,
              child: Text('アカウントを作成する'),
            ),
          ],
        ),
      ),
    );
  }
}
