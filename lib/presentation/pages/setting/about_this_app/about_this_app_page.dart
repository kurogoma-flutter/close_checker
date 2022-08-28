import 'package:close_checker/presentation/pages/setting/component/legal_text_widget.dart';
import 'package:flutter/material.dart';

class AboutThisAppPage extends StatelessWidget {
  const AboutThisAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              LegalText(text: 'アプリバージョン'),
              LegalText(text: ':'),
              LegalText(text: '0.1.0'),
            ],
          ),
        ],
      ),
    );
  }
}
