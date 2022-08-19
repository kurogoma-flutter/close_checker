import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox.expand(
      child: ListView(
        children: const [
          Divider(),
          ListTile(
            title: Text('このアプリについて'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            title: Text('フォントサイズ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            title: Text('アプリテーマ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            title: Text('PIN設定'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            title: Text('規約'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
          ListTile(
            title: Text('問い合わせ'),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(),
        ],
      ),
    );
  }
}
