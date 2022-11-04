import 'package:close_checker/presentation/common/base_scaffold_no_bnb.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseScaffoldWithNoNav(
      child: Column(
        children: const [
          Text('サインアップフォーム'),
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
