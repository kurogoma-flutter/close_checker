import 'package:close_checker/presentation/common/base_scaffold_no_bnb.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter/material.dart';

/// ログインフォーム
class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffoldWithNoNav(
      child: Column(
        children: const [
          Text('ログインフォーム'),
          TextField(
            decoration: InputDecoration(
              hintText: 'メールアドレス',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'パスワード',
            ),
          ),
        ],
      ),
    );
  }
}
