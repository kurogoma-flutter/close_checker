import 'package:close_checker/domain/major_list/major_list_notifier.dart';
import 'package:close_checker/utility/logger.dart';
import 'package:close_checker/presentation/dammy/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MajorListPage extends HookConsumerWidget {
  const MajorListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(majorListNotifierProvider);
    final notifier = ref.read(majorListNotifierProvider.notifier);

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
                    trailing: const _RightArrowIcon(),
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

class _RightArrowIcon extends StatelessWidget {
  const _RightArrowIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 28,
        child: Image.asset(
          'assets/right-arrow.png',
        ),
      ),
    );
  }
}
