import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  Future init(SharedPreferences instance);
  void saveJson(Map<String, dynamic> data);
  Map<String, dynamic> getJson(String path);
}