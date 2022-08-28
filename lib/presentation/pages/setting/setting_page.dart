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
          GestureDetector(
            onTap: () {
              context.push('/setting/about_this_app');
            },
            child: const ListTile(
              title: Text('このアプリについて'),
              trailing: _RightArrowIcon(),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('フォントサイズ'),
            trailing: SizedBox(
              height: 48,
              child: GestureDetector(
                onTap: () {
                  // TODO: フォントサイズ変更
                },
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/font-style-icon.png',
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('アプリテーマ'),
            trailing: SizedBox(
              height: 48,
              child: GestureDetector(
                onTap: () {
                  // TODO: フォントサイズ変更
                },
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    'assets/app-theme.png',
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.go('/setting/pin');
            },
            child: ListTile(
              title: const Text('PIN設定'),
              trailing: SizedBox(
                height: 48,
                child: GestureDetector(
                  onTap: () {
                    // TODO: フォントサイズ変更
                  },
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Image.asset(
                      'assets/pin-code.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/setting/app_term');
            },
            child: const ListTile(
              title: Text('規約'),
              trailing: _RightArrowIcon(),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/setting/inquiry');
            },
            child: const ListTile(
              title: Text('問い合わせ'),
              trailing: _RightArrowIcon(),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class _RightArrowIcon extends StatelessWidget {
  const _RightArrowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 28,
        child: Image.asset(
          'assets/right-arrow.png',
        ),
      ),
    );
  }
}
