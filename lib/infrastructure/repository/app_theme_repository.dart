import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_data_source.dart';
import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppTheme {
  light('light'),
  dark('dark'),
  ;

  const AppTheme(this.value);
  final String value;
}

enum AppFontSize {
  large('large'),
  small('small'),
  ;

  const AppFontSize(this.value);
  final String value;
}

final appThemeRepository = Provider((ref) => AppThemeRepository(
    sharedPreferenceDataSource: SharedPreferenceDataSource()));

/// アプリテーマをSharedPreferenceで管理するためのRepository
class AppThemeRepository {
  AppThemeRepository({
    required this.sharedPreferenceDataSource,
  });

  // キャッシュする内部変数
  AppTheme appTheme = AppTheme.light;

  final SharedPreferenceDataSource sharedPreferenceDataSource;
  final _appThemeKey = SharedPreferenceKeys.appTheme;

  /// アプリテーマをSharedPreferenceに保存し、内部変数にも保存する
  Future<void> saveAppTheme(AppTheme selectedTheme) async {
    await sharedPreferenceDataSource.setString(
        _appThemeKey, appTheme.toString());
    appTheme = selectedTheme;
  }

  /// SharedPreferenceからアプリテーマを取得し、内部変数にキャッシュする
  Future<void> getAppTheme() async {
    final appThemeString =
        await sharedPreferenceDataSource.getString(_appThemeKey);
    if (appThemeString == null) {
      appTheme = AppTheme.light;
    } else {
      appTheme = convertToAppTheme(appThemeString);
    }
  }

  /// SharedPreferenceにアプリテーマが保存されているかどうかを確認する
  Future<bool> containsAppTheme() async {
    return await sharedPreferenceDataSource.containsKey(_appThemeKey);
  }

  /// SharedPreferenceからアプリテーマを削除し、内部変数にも保存する
  Future<void> removeAppTheme() async {
    await sharedPreferenceDataSource.remove(_appThemeKey);
    appTheme = AppTheme.light;
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

  /// フォントサイズの設定をSharedPreferenceに保存する
  Future<void> saveAppFontSize(AppFontSize selectedFontSize) async {
    await sharedPreferenceDataSource.setString(
      SharedPreferenceKeys.appFontSize,
      selectedFontSize.value,
    );
  }

  /// SharedPreferenceからフォントサイズの設定を取得する
  Future<AppFontSize> getAppFontSize() async {
    final appFontSizeString = await sharedPreferenceDataSource
        .getString(SharedPreferenceKeys.appFontSize);
    if (appFontSizeString == null) {
      return AppFontSize.large;
    } else {
      return convertToAppFontSize(appFontSizeString);
    }
  }

  /// テキストをフォントサイズ（enum）に変換する
  AppFontSize convertToAppFontSize(String appFontSize) {
    switch (appFontSize) {
      case 'large':
        return AppFontSize.large;
      case 'small':
        return AppFontSize.small;
      default:
        return AppFontSize.large;
    }
  }
}
