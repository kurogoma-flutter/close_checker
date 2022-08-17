import 'package:close_checker/presentation/dammy/test_data.dart';
import 'package:flutter/material.dart';

class MinorListPage extends StatefulWidget {
  const MinorListPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  State<MinorListPage> createState() => _MinorListPageState();
}

class _MinorListPageState extends State<MinorListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          color: const Color.fromARGB(255, 229, 255, 255),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: dammyCheckList.length,
            itemBuilder: (context, index) {
              return SwitchListTile(
                key: ValueKey(dammyCheckList[index].checkId),
                secondary: Text(
                  dammyCheckList[index].icon,
                  style: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                title: Text(
                  dammyCheckList[index].content,
                  maxLines: 5,
                ),
                value: dammyCheckList[index].isDone,
                onChanged: (value) {
                  setState(() {
                    dammyCheckList[index].isDone = value;
                  });
                },
              );
            },
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 229, 255, 255),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                // isDoneを全てfalseにする
                for (var i = 0; i < dammyCheckList.length; i++) {
                  dammyCheckList[i].isDone = false;
                }
                setState(() {});
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                child: Text(
                  '新規追加する',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // isDoneを全てfalseにする
                for (var i = 0; i < dammyCheckList.length; i++) {
                  dammyCheckList[i].isDone = false;
                }
                setState(() {});
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                child: Text(
                  'リセットする',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
