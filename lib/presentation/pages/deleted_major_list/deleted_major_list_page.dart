import 'package:close_checker/utility/logger.dart';
import 'package:close_checker/presentation/dammy/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class DeletedMajorListPage extends StatelessWidget {
  const DeletedMajorListPage({Key? key}) : super(key: key);

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
                          onPressed: (value) async {
                            await showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('削除しますか？'),
                                    content: const Text('削除したデータは復元できません。'),
                                    actions: [
                                      ElevatedButton(
                                        child: const Text('キャンセル'),
                                        onPressed: () =>
                                            Navigator.of(context).pop(),
                                      ),
                                      ElevatedButton(
                                        child: const Text('削除'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          context.go('/list');
                                        },
                                      ),
                                    ],
                                  );
                                });
                          },
                          backgroundColor: Colors.red,
                          icon: Icons.delete,
                          label: '削除',
                        ),
                        SlidableAction(
                          onPressed: (value) {
                            logger.i('復元');
                          },
                          backgroundColor:
                              const Color.fromARGB(255, 29, 116, 237),
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: '復元',
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(dammyMajorList[index].content),
                      trailing: const Icon(Icons.arrow_forward),
                    ),
                  ),
                  onTap: () => context.push('/deleted/minor/5'),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
