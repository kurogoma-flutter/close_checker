// import 'package:close_checker/infrastructure/repository/app_theme_repository.dart';

// // 各画面でアプリ設定値を取得する

// // TODO(Kurogoma939): 仮置き
// enum AppFontSize {
//   large,
//   small,
// }

// class AppSetting {
//   AppSetting({
//     required this.appTheme,
//     required this.appFontSize,
//   });

//   final AppTheme appTheme;
//   final AppFontSize appFontSize;
// }

// Future<AppSetting> fetchAppSetting() async {
//   // SharedPreferenceからアプリ設定値を取得する
//   final appTheme = await appThemeRepository.getAppTheme();
//   return AppSetting(
//     appTheme: appTheme,
//     appFontSize: appFontSize,
//   );
// }
