import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferenceに関するデータソース
class SharedPreferenceDataSource {
  /// SharedPreferenceに保存されているデータを取得する
  Future<SharedPreferences> getSharedPreferences() async {
    return await SharedPreferences.getInstance();
  }

  /// SharedPreferenceのキーからデータを取得する
  Future<String?> getString(String key) async {
    final sharedPreferences = await getSharedPreferences();
    return sharedPreferences.getString(key);
  }

  /// SharedPreferenceに特定のキーが存在するかどうかを確認する
  Future<bool> containsKey(String key) async {
    final sharedPreferences = await getSharedPreferences();
    return sharedPreferences.containsKey(key);
  }

  /// SharedPreferenceにデータを保存（新規・更新）する
  Future<void> setString(String key, String value) async {
    final sharedPreferences = await getSharedPreferences();
    sharedPreferences.setString(key, value);
  }

  /// SharedPreferenceのキーからデータを削除する
  Future<void> remove(String key) async {
    final sharedPreferences = await getSharedPreferences();
    sharedPreferences.remove(key);
  }

  /// SharedPreferenceのデータを全て削除する
  Future<void> clear() async {
    final sharedPreferences = await getSharedPreferences();
    sharedPreferences.clear();
  }
}
