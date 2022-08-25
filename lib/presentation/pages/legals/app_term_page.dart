import 'package:flutter/material.dart';

class AppTermPage extends StatelessWidget {
  const AppTermPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('規約'),
      ),
      body: const Center(
        child: Text('規約'),
      ),
    );
  }
}
