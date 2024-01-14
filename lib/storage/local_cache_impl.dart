import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'local_cache.dart';

class SharedPrefsImpl implements SharedPrefs {
  late SharedPreferences _instance;

  @override
  Map<String, dynamic> getJson(String path) =>
      jsonDecode(_instance.getString(path) ?? '');

  @override
  void init(SharedPreferences instance) {
    _instance = instance;
  }

  @override
  void saveJson(String path, Map<String, dynamic> data) {
    _instance.setString(path, jsonEncode(data));
  }
}
