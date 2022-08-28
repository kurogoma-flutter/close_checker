import 'package:flutter/material.dart';

/// 規約の大項目
class LegalTitle extends StatelessWidget {
  const LegalTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 24),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

/// 規約の中項目
class LegalSubTitle extends StatelessWidget {
  const LegalSubTitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

/// 規約条項本文
class LegalText extends StatelessWidget {
  const LegalText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
