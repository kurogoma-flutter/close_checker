import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SimpleErrorPage extends StatelessWidget {
  const SimpleErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80),
      child: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('エラーが発生しました。\n複数回発生する場合は、お問合せください。'),
            TextButton(
              onPressed: () => context.go('/list'),
              child: const Text('トップへ戻る'),
            ),
          ],
        ),
      ),
    );
  }
}
