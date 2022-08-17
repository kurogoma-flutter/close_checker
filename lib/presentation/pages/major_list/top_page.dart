import 'package:close_checker/data/utility/logger.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 248, 255),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 120),
        child: Column(
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
              height: MediaQuery.of(context).size.height - 240,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: const Card(
                      child: ListTile(
                        title: Text('大分類カード'),
                        trailing: Icon(Icons.arrow_forward),
                      ),
                    ),
                    onTap: () => context.go('/check_list'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 38, 244, 213),
        onPressed: () {
          logger.i('テストログ');
        },
        elevation: 2,
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}