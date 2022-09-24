import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_data_source.dart';

/// PINをSharedPreferenceに保存するためのRepository
///
/// SharedPreferenceDataSourceを使用して、PINを保存する
class PinSettingRepository {
  PinSettingRepository({
    required this.sharedPreferenceDataSource,
  });

  final SharedPreferenceDataSource sharedPreferenceDataSource;

  /// PINをSharedPreferenceに保存する
  Future<void> savePin(String pin) async {
    await sharedPreferenceDataSource.setString('pin', pin);
  }

  /// SharedPreferenceからPINを取得する
  Future<String?> getPin() async {
    return await sharedPreferenceDataSource.getString('pin');
  }

  /// SharedPreferenceにPINが保存されているかどうかを確認する
  Future<bool> containsPin() async {
    return await sharedPreferenceDataSource.containsKey('pin');
  }

  /// SharedPreferenceからPINを削除する
  Future<void> removePin() async {
    await sharedPreferenceDataSource.remove('pin');
  }
}
