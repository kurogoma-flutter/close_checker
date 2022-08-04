import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CheckListPage extends StatelessWidget {
  const CheckListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40, right: 6, left: 6),
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Image.asset('assets/close_checker_logo.png'),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 120,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 12,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Card(
                    child: ListTile(
                      title: Text('チェック項目：${index + 1}'),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                  onTap: () => context.push('/'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
