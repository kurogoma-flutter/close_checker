import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// PIN4桁の設定
class PinSettingPage extends StatelessWidget {
  const PinSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 0, bottom: 100, right: 60, left: 60),
        child: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'PINを設定する',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _PinInputForm(number: 1, secret: false),
                    _PinInputForm(number: 2, secret: false),
                    _PinInputForm(number: 3, secret: false),
                    _PinInputForm(number: 4, secret: false),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: const [
                      _PinNumberButton(number: 1),
                      _PinNumberButton(number: 2),
                      _PinNumberButton(number: 3),
                      _PinNumberButton(number: 4),
                      _PinNumberButton(number: 5),
                      _PinNumberButton(number: 6),
                      _PinNumberButton(number: 7),
                      _PinNumberButton(number: 8),
                      _PinNumberButton(number: 9),
                      _PinNumberButton(number: 0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _PinInputForm extends StatelessWidget {
  const _PinInputForm({
    Key? key,
    required this.number,
    required this.secret,
  }) : super(key: key);

  final int number;
  final bool secret;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          secret ? '＊' : number.toString(),
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class _PinNumberButton extends StatelessWidget {
  const _PinNumberButton({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(number.toString());
        context.push('/pin/confirm');
      },
      child: CircleAvatar(
        maxRadius: 32,
        backgroundColor: Colors.blueAccent,
        child: Text(
          number.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}

/// PIN4桁の確認
class PinConfirmPage extends StatelessWidget {
  const PinConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 0, bottom: 100, right: 60, left: 60),
        child: SizedBox.expand(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'PINを再確認する',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _PinInputForm(number: 1, secret: true),
                    _PinInputForm(number: 2, secret: true),
                    _PinInputForm(number: 3, secret: true),
                    _PinInputForm(number: 4, secret: true),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    alignment: WrapAlignment.center,
                    children: const [
                      _PinNumberButton(number: 1),
                      _PinNumberButton(number: 2),
                      _PinNumberButton(number: 3),
                      _PinNumberButton(number: 4),
                      _PinNumberButton(number: 5),
                      _PinNumberButton(number: 6),
                      _PinNumberButton(number: 7),
                      _PinNumberButton(number: 8),
                      _PinNumberButton(number: 9),
                      _PinNumberButton(number: 0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// PIN設定完了
class PinSettingDonePage extends StatelessWidget {
  const PinSettingDonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
