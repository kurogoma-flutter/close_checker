import 'package:close_checker/data/utility/logger.dart';
import 'package:close_checker/presentation/router/route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // データベースを開く（なければ作成する）
  Future<Database> getDatabase() async {
    final path = await getDbPath();
    final db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          "CREATE TABLE major_list(listId INTEGER PRIMARY KEY, content TEXT, createdUserId TEXT, isDeleted BOOLEAN)");
      await db.execute(
          "CREATE TABLE minor_list(checkId INTEGER PRIMARY KEY, listId TEXT, icon TEXT, content TEXT, isDone BOOLEAN, isDeleted BOOLEAN)");
    });
    logger.i('データベース設定完了');
    return db;
  }

  Future<String> getDbPath() async {
    final dbDirectory = await getApplicationSupportDirectory();
    final dbFilePath = dbDirectory.path;
    final path = join(dbFilePath, 'close_checker.db');
    return path;
  }

  @override
  void initState() {
    super.initState();
    Future(() async {
      await getDatabase();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
      title: 'Close Checker',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        fontFamily: 'RocknRoll_One',
      ),
    );
  }
}
