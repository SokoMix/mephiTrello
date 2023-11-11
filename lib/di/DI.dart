import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DI {
  Future<SharedPreferences> getSharedPrefsInstance();

  FirebaseAnalytics getFbAnalyticsInstance();

  Dio getDioInstance(String? token);
}

class DIimpl implements DI {
  @override
  Future<SharedPreferences> getSharedPrefsInstance() =>
      SharedPreferences.getInstance();

  @override
  Dio getDioInstance(String? token) => Dio(
        BaseOptions(
          baseUrl: 'http://10.0.2.2:8000',
          responseType: ResponseType.json,
          contentType: ContentType.json.toString(),
          headers: {'Authorization': 'Bearer ${token??''}'},
        ),
      );

  @override
  FirebaseAnalytics getFbAnalyticsInstance() => FirebaseAnalytics.instance;
}
