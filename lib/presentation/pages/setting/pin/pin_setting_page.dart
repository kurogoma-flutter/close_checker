import 'package:close_checker/presentation/pages/setting/pin/pin_setting_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// PIN4桁の設定
class PinSettingPage extends ConsumerWidget {
  const PinSettingPage({Key? key}) : super(key: key);

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
                  'PINを設定する',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pin, 1),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pin, 2),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pin, 3),
                    ),
                    _PinInputForm(
                      pin: viewModel.getSubstring(viewModel.pin, 4),
                    ),
                  ],
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: const [
                    _PinNumber1(),
                    _PinNumber2(),
                    _PinNumber3(),
                    _PinNumber4(),
                    _PinNumber5(),
                    _PinNumber6(),
                    _PinNumber7(),
                    _PinNumber8(),
                    _PinNumber9(),
                    _PinClear(),
                    _PinNumber0(),
                    _PinDelete(),
                  ],
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
          pin,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

class _PinNumber1 extends ConsumerWidget {
  const _PinNumber1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '1');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/1.png'),
      ),
    );
  }
}

class _PinNumber2 extends ConsumerWidget {
  const _PinNumber2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '2');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/2.png'),
      ),
    );
  }
}

class _PinNumber3 extends ConsumerWidget {
  const _PinNumber3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '3');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/3.png'),
      ),
    );
  }
}

class _PinNumber4 extends ConsumerWidget {
  const _PinNumber4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '4');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/4.png'),
      ),
    );
  }
}

class _PinNumber5 extends ConsumerWidget {
  const _PinNumber5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '5');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/5.png'),
      ),
    );
  }
}

class _PinNumber6 extends ConsumerWidget {
  const _PinNumber6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '6');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/6.png'),
      ),
    );
  }
}

class _PinNumber7 extends ConsumerWidget {
  const _PinNumber7({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '7');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/7.png'),
      ),
    );
  }
}

class _PinNumber8 extends ConsumerWidget {
  const _PinNumber8({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '8');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/8.png'),
      ),
    );
  }
}

class _PinNumber9 extends ConsumerWidget {
  const _PinNumber9({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '9');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/9.png'),
      ),
    );
  }
}

class _PinNumber0 extends ConsumerWidget {
  const _PinNumber0({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.setPin(context, '0');
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/0.png'),
      ),
    );
  }
}

class _PinClear extends ConsumerWidget {
  const _PinClear({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.clearPin();
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/clear.png'),
      ),
    );
  }
}

class _PinDelete extends ConsumerWidget {
  const _PinDelete({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(pinSettingPageViewModel);
    return GestureDetector(
      onTap: () {
        viewModel.deletePin();
      },
      child: SizedBox(
        height: 85,
        child: Image.asset('assets/delete.png'),
      ),
    );
  }
}
