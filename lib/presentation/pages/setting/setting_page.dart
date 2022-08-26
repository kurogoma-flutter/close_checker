import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: ListView(
        children: [
          const Divider(),
          const ListTile(
            title: Text('このアプリについて'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const Divider(),
          const ListTile(
            title: Text('フォントサイズ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const Divider(),
          const ListTile(
            title: Text('アプリテーマ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.go('/pin');
            },
            child: const ListTile(
              title: Text('PIN設定'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/app_term');
            },
            child: const ListTile(
              title: Text('規約'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/inquiry');
            },
            child: const ListTile(
              title: Text('問い合わせ'),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
