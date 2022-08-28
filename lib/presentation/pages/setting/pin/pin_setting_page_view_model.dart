import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final pinSettingPageViewModel =
    ChangeNotifierProvider((ref) => PinSettingPageViewModel());

class PinSettingPageViewModel extends ChangeNotifier {
  PinSettingPageViewModel();

  String pin = '';
  String pinConfirm = '';

  /// PINから特定の文字を表示する
  ///
  /// [pinCode] PINコード
  ///
  /// [index] 表示したいn文字目
  String getSubstring(String string, int index) {
    if (string.length >= index) {
      return string.substring(index - 1, index);
    } else {
      return '';
    }
  }

  /// PIN4桁の設定
  void setPin(BuildContext context, String number) {
    pin += number;
    notifyListeners();

    if (pin.length == 4) {
      context.push('/pin/confirm');
    }
  }

  /// PIN4桁の確認
  void setPinConfirm(BuildContext context, String number) async {
    pinConfirm += number;
    notifyListeners();

    if (pinConfirm.length == 4) {
      if (pin == pinConfirm) {
        await savePin(context);
      } else {
        // エラー表示 + PINクリア
        await showDialog(
          context: context,
          builder: ((context) {
            return AlertDialog(
              title: const Text('PINが一致しません'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          }),
        );

        pinConfirm = '';
        notifyListeners();
      }
    }
  }

  /// PINをSharedPreferencesに保存
  Future<void> savePin(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('pin', pin);

    await showDialog(
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('PINを設定しました'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.go('/setting');

                clearPin();
                clearPinConfirm();
              },
              child: const Text('OK'),
            ),
          ],
        );
      }),
    );
  }

  /// PINを1文字削除
  void deletePin() {
    if (pin.isNotEmpty) {
      pin = pin.substring(0, pin.length - 1);
    }
    notifyListeners();
  }

  /// PINのリセット
  void clearPin() {
    pin = '';
    notifyListeners();
  }

  /// PIN（確認）を1文字削除
  deletePinConfirm() {
    if (pinConfirm.isNotEmpty) {
      pinConfirm = pinConfirm.substring(0, pinConfirm.length - 1);
    }
    notifyListeners();
  }

  /// PIN（確認）のリセット
  void clearPinConfirm() {
    pinConfirm = '';
    notifyListeners();
  }
}
