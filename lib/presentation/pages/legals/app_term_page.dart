import 'package:flutter/material.dart';

class AppTermPage extends StatelessWidget {
  const AppTermPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('規約'),
        backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      ),
      body: const Center(
        child: Text('規約'),
      ),
    );
  }
}
