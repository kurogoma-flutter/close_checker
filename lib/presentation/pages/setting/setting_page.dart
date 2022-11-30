import 'package:close_checker/domain/setting/setting_notifier.dart';
import 'package:close_checker/infrastructure/repository/app_theme_repository.dart';
import 'package:close_checker/presentation/common/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingPage extends HookConsumerWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(settingNotifierProvider.notifier);

    return SizedBox.expand(
      child: ListView(
        children: [
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/setting/about_this_app');
            },
            child: ListTile(
              title: const Text('このアプリについて'),
              trailing: SizedBox(
                height: 48,
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
                    'assets/close_checker_icon.png',
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('フォントサイズ'),
            trailing: SizedBox(
              height: 48,
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
          const Divider(),
          GestureDetector(
            // タップをしたらダイアログを表示する
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text(
                      'カラーテーマを選択',
                      textAlign: TextAlign.center,
                    ),
                    actions: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // TODO: 共通にしたい
                          backgroundColor: CustomColor.lightBlue,
                          foregroundColor: CustomColor.darkBlue,
                        ),
                        onPressed: () {
                          notifier.saveAppTheme(AppTheme.light);
                          Navigator.of(context).pop();
                        },
                        child: const Text('ライトモード'),
                      ),
                      const SizedBox(width: 4),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // TODO: 共通にしたい
                          backgroundColor: CustomColor.darkBlue,
                          foregroundColor: CustomColor.white,
                        ),
                        onPressed: () {
                          notifier.saveAppTheme(AppTheme.dark);
                          Navigator.of(context).pop();
                        },
                        child: const Text('ダークモード'),
                      ),
                    ],
                  );
                },
              );
            },
            child: ListTile(
              title: const Text('アプリテーマ'),
              trailing: SizedBox(
                height: 48,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: CustomColor.white,
                    border: Border.all(
                      color: CustomColor.blue,
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
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/setting/app_term');
            },
            child: ListTile(
              title: const Text('規約'),
              trailing: SizedBox(
                height: 48,
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
                    'assets/rule.png',
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          GestureDetector(
            onTap: () {
              context.push('/setting/inquiry');
            },
            child: ListTile(
              title: const Text('問い合わせ'),
              trailing: SizedBox(
                height: 48,
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
                    'assets/question.png',
                  ),
                ),
              ),
            ),
          ),
          const Divider(),
          ElevatedButton(
            onPressed: () => context.go('/signUp'),
            child: const Text('デバッグページ'),
          ),
        ],
      ),
    );
  }
}
