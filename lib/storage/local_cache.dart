import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  void init(SharedPreferences instance);
  void saveJson(String path, Map<String, dynamic> data);
  Map<String, dynamic> getJson(String path);
}