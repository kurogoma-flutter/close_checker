import 'package:close_checker/data/utility/logger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  int index = 1;

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
      body: Stack(
        children: [
          widget.child,
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              backgroundColor: const Color.fromARGB(255, 202, 248, 255),
              type: BottomNavigationBarType.fixed,
              currentIndex: index,
              onTap: (i) {
                setState(() {
                  index = i;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: GestureDetector(
                    child: SizedBox(
                      height: 60,
                      child: Image.asset('assets/trash-icon.png'),
                    ),
                    onTap: () {
                      context.go('/deleted');
                    },
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                    child: SizedBox(
                      height: 60,
                      child: Image.asset('assets/list-icon.png'),
                    ),
                    onTap: () {
                      logger.d('タップテスト');
                      context.go('/list');
                    },
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: GestureDetector(
                    child: SizedBox(
                      height: 60,
                      child: Image.asset('assets/setting-icon.png'),
                    ),
                    onTap: () {
                      logger.d('タップテスト');
                      context.go('/setting');
                    },
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
