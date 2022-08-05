import 'package:flutter/material.dart';

class CheckListPage extends StatefulWidget {
  const CheckListPage({Key? key}) : super(key: key);

  @override
  State<CheckListPage> createState() => _CheckListPageState();
}

class _CheckListPageState extends State<CheckListPage> {
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
                bool isChecked = false;
                return SwitchListTile(
                  key: ValueKey('data$index'),
                  title: Text('タスク：$index'),
                  value: isChecked,
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      isChecked = value;
                    });
                  },
                  secondary: const Icon(Icons.lightbulb_outline),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
