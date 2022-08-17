import 'package:close_checker/presentation/dammy/test_data.dart';
import 'package:flutter/material.dart';

class DeletedMinorListPage extends StatefulWidget {
  const DeletedMinorListPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  State<DeletedMinorListPage> createState() => _DeletedMinorListPageState();
}

class _DeletedMinorListPageState extends State<DeletedMinorListPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
          child: Center(
            child: Text(
              '※ 削除済みリスト  スワイプで復元',
              style: TextStyle(
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: const Color.fromARGB(255, 229, 255, 255),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: dammyCheckList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  key: ValueKey(dammyCheckList[index].checkId),
                  leading: Text(
                    dammyCheckList[index].icon,
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  title: Text(
                    dammyCheckList[index].content,
                    maxLines: 5,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
