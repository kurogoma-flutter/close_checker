import 'package:close_checker/presentation/pages/setting/pin/pin_setting_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// PIN4桁の確認
class PinConfirmPage extends ConsumerWidget {
  const PinConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
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
                  children: [
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pinConfirm, 1),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pinConfirm, 2),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pinConfirm, 3),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pinConfirm, 4),
                    ),
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
                      _PinClearButton(),
                      _PinNumberButton(number: 0),
                      _PinDeleteButton()
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
    required this.pin,
  }) : super(key: key);

  final String pin;

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
          pin.isEmpty ? '' : '＊',
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class _PinNumberButton extends ConsumerWidget {
  const _PinNumberButton({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPinConfirm(context, number.toString());
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

class _PinDeleteButton extends ConsumerWidget {
  const _PinDeleteButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        // 1文字削除
        viewModel.deletePinConfirm();
      },
      child: const CircleAvatar(
        maxRadius: 32,
        backgroundColor: Colors.grey,
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: 28,
        ),
      ),
    );
  }
}

class _PinClearButton extends ConsumerWidget {
  const _PinClearButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.clearPinConfirm();
      },
      child: const CircleAvatar(
        maxRadius: 32,
        backgroundColor: Colors.orange,
        child: Text(
          'C',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
