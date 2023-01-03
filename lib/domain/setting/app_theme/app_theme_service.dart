import 'package:close_checker/infrastructure/repository/app_theme_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appThemeService = Provider.autoDispose(
    (ref) => AppThemeService(ref.watch(appThemeRepository)));

/// アプリテーマをSharedPreferenceに保存するためのService
class AppThemeService {
  AppThemeService(this.appThemeRepository);

  final AppThemeRepository appThemeRepository;

  // キャッシュされた内部変数
  get appTheme => appThemeRepository.appTheme;

  /// アプリテーマをSharedPreferenceに保存する
  Future<void> saveAppTheme(AppTheme selectedTheme) async {
    await appThemeRepository.saveAppTheme(selectedTheme);
  }

  /// SharedPreferenceからアプリテーマを取得する（キャッシュに保存）
  Future<void> getAppTheme() async {
    await appThemeRepository.getAppTheme();
  }

  /// SharedPreferenceにアプリテーマが保存されているかどうかを確認する
  Future<bool> containsAppTheme() async {
    return await appThemeRepository.containsAppTheme();
  }

  /// SharedPreferenceからアプリテーマを削除する（キャッシュもクリア）
  Future<void> removeAppTheme() async {
    await appThemeRepository.removeAppTheme();
  }

  /// フォントサイズの設定をSharedPreferenceに保存する
  Future<void> saveAppFontSize(AppFontSize selectedFontSize) async {
    await appThemeRepository.saveAppFontSize(selectedFontSize);
  }
}
