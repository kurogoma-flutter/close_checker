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
        children: const [
          _TileWithLabel(title: 'アプリバージョン', label: '0. 1. 0'),
          _TileWithLabel(title: '製作者', label: 'Kurogoma'),
          _TileWithLabel(title: '最終更新日', label: '2022. 08. 20'),
        ],
      ),
    );
  }
}

class _TileWithLabel extends StatelessWidget {
  const _TileWithLabel({
    Key? key,
    required this.title,
    required this.label,
  }) : super(key: key);

  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LegalText(text: title),
        const LegalText(text: ':'),
        LegalText(text: label),
      ],
    );
  }
}
