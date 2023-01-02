import 'package:close_checker/domain/setting/app_theme/app_theme_service.dart';
import 'package:close_checker/domain/setting/setting_state.dart';
import 'package:close_checker/infrastructure/repository/app_theme_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 設定（setting）のnotifier
final settingNotifierProvider =
    StateNotifierProvider.autoDispose<SettingNotifier, SettingState>(
  (ref) => SettingNotifier(
    appThemeService: ref.read(appThemeService),
  ),
);

class SettingNotifier extends StateNotifier<SettingState> {
  SettingNotifier({
    required this.appThemeService,
  }) : super(const SettingState());

  final AppThemeService appThemeService;

  /// アプリテーマをSharedPreferenceに保存する
  Future<void> saveAppTheme(AppTheme selectedTheme) async {
    await appThemeService.saveAppTheme(selectedTheme);
  }

  /// SharedPreferenceからアプリテーマを取得する（キャッシュに保存）
  Future<void> getAppTheme() async {
    await appThemeService.getAppTheme();
  }

  /// フォントサイズの設定をSharedPreferenceに保存する
  Future<void> saveAppFontSize(AppFontSize selectedFontSize) async {
    await appThemeService.saveAppFontSize(selectedFontSize);
  }
}
