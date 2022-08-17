import 'package:close_checker/data/utility/logger.dart';
import 'package:close_checker/presentation/dammy/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class MajorListPage extends StatelessWidget {
  const MajorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          color: const Color.fromARGB(255, 229, 255, 255),
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const Divider(height: 3);
            },
            padding: EdgeInsets.zero,
            itemCount: dammyMajorList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Slidable(
                  endActionPane: ActionPane(
                    motion: const DrawerMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (value) {
                          logger.d('削除する');
                        },
                        backgroundColor: Colors.red,
                        icon: Icons.delete,
                        label: '削除',
                      ),
                      SlidableAction(
                        onPressed: (value) {
                          logger.i('編集');
                        },
                        backgroundColor: const Color.fromARGB(255, 3, 207, 95),
                        foregroundColor: Colors.white,
                        icon: Icons.edit,
                        label: '編集',
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text(dammyMajorList[index].content),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                ),
                onTap: () => context.push('/list/minor/5'),
              );
            },
          ),
        ),
        const Divider(
          color: Color.fromARGB(255, 229, 255, 255),
        ),
        ElevatedButton(
          onPressed: () async {
            await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('新規リスト追加'),
                    content: const TextField(
                      key: Key('newListName'),
                      decoration: InputDecoration(hintText: "リストタイトル"),
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('キャンセル'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          context.pop();
                        },
                        child: const Text('追 加'),
                      ),
                    ],
                  );
                });
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            child: Text(
              '新規リスト追加',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
