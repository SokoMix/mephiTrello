import 'package:shared_preferences/shared_preferences.dart';

abstract class DI {
  Future<SharedPreferences> getSharedPrefsInstance();
  // FirebaseAnalytics
  // Dio
}

class DIimpl implements DI {
  @override
  Future<SharedPreferences> getSharedPrefsInstance() => SharedPreferences.getInstance();
  // FirebaseAnalytics
  // Dio
}