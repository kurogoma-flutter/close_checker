import 'package:flutter/material.dart';

class InquiryPage extends StatelessWidget {
  const InquiryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('お問合せ'),
        backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      ),
      body: const Center(
        child: Text('お問合せ'),
      ),
    );
  }
}
