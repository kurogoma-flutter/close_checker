import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_data_source.dart';

enum AppTheme {
  light,
  dark,
}

/// アプリテーマをSharedPreferenceで管理するためのRepository
class AppThemeRepository {
  AppThemeRepository({
    required this.sharedPreferenceDataSource,
  });

  final SharedPreferenceDataSource sharedPreferenceDataSource;

  /// アプリテーマをSharedPreferenceに保存する
  Future<void> saveAppTheme(String appTheme) async {
    await sharedPreferenceDataSource.setString('appTheme', appTheme);
  }

  /// SharedPreferenceからアプリテーマを取得する
  Future<String?> getAppTheme() async {
    return await sharedPreferenceDataSource.getString('appTheme');
  }

  /// SharedPreferenceにアプリテーマが保存されているかどうかを確認する
  Future<bool> containsAppTheme() async {
    return await sharedPreferenceDataSource.containsKey('appTheme');
  }

  /// SharedPreferenceからアプリテーマを削除する
  Future<void> removeAppTheme() async {
    await sharedPreferenceDataSource.remove('appTheme');
  }

  /// テキストをアプリテーマ（enum）に変換する
  AppTheme convertToAppTheme(String appTheme) {
    switch (appTheme) {
      case 'light':
        return AppTheme.light;
      case 'dark':
        return AppTheme.dark;
      default:
        return AppTheme.light;
    }
  }
}
