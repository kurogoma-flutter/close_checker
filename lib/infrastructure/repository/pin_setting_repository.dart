import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_data_source.dart';
import 'package:close_checker/infrastructure/data_source/local_data_source/shared_preference/shared_preference_keys.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// PINをSharedPreferenceに保存するためのRepository
///
/// SharedPreferenceDataSourceを使用して、PINを保存する
final pinSettingRepositoryProvider = Provider((ref) => PinSettingRepository(
      sharedPreferenceDataSource: SharedPreferenceDataSource(),
    ));

class PinSettingRepository {
  PinSettingRepository({
    required this.sharedPreferenceDataSource,
  });

  final SharedPreferenceDataSource sharedPreferenceDataSource;
  final _pinKey = SharedPreferenceKeys.pin;

  /// PINをSharedPreferenceに保存する
  Future<void> savePin(String pin) async {
    await sharedPreferenceDataSource.setString(_pinKey, pin);
  }

  /// SharedPreferenceからPINを取得する
  Future<String?> getPin() async {
    return await sharedPreferenceDataSource.getString(_pinKey);
  }

  /// SharedPreferenceにPINが保存されているかどうかを確認する
  Future<bool> containsPin() async {
    return await sharedPreferenceDataSource.containsKey(_pinKey);
  }

  /// SharedPreferenceからPINを削除する
  Future<void> removePin() async {
    await sharedPreferenceDataSource.remove(_pinKey);
  }
}
