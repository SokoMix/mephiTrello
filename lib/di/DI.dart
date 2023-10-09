import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DI {
  Future<SharedPreferences> getSharedPrefsInstance();
  FirebaseAnalytics getFbAnalyticsInstance();
  Dio getDioInstance();
}

class DIimpl implements DI {
  @override
  Future<SharedPreferences> getSharedPrefsInstance() => SharedPreferences.getInstance();

  @override
  Dio getDioInstance() => Dio();

  @override
  FirebaseAnalytics getFbAnalyticsInstance() => FirebaseAnalytics.instance;
}