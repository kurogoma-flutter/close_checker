import 'package:flutter/material.dart';

class BaseScaffoldWithNoNav extends StatelessWidget {
  const BaseScaffoldWithNoNav({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 248, 255),
        title: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Image.asset('assets/close_checker_logo.png'),
        ),
      ),
      body: child,
    );
  }
}
