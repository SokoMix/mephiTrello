import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/domain/user_manager.dart';
import 'package:mephi_trello/pages/auth/auth_manager.dart';
import 'package:mephi_trello/pages/projects/projects_manager.dart';
import 'package:mephi_trello/router/router.dart';
import 'package:mephi_trello/router/router_manager.dart';
import 'package:mephi_trello/service/trello_API.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DI {
  Future<SharedPreferences> getSharedPrefsInstance();

  FirebaseAnalytics getFbAnalyticsInstance();

  Dio getDioInstance();
}

class DIimpl implements DI {
  final _dio = Dio(
    BaseOptions(
      baseUrl: 'http://10.0.2.2:8000',
      responseType: ResponseType.json,
      contentType: ContentType.json.toString(),
      headers: {'Authorization': 'Bearer ${'12' ?? ''}'},
    ),
  );

  @override
  Future<SharedPreferences> getSharedPrefsInstance() =>
      SharedPreferences.getInstance();

  @override
  Dio getDioInstance() => _dio;

  @override
  FirebaseAnalytics getFbAnalyticsInstance() => FirebaseAnalytics.instance;
}

void registerDI() {
  final _instance = GetIt.I;
  final di = DIimpl();
  _instance.registerSingleton(DIimpl());
  _instance.registerSingleton(di.getDioInstance());
  _instance.registerSingleton(di.getSharedPrefsInstance());
  _instance.registerSingleton<TrelloApi>(TrelloApiImpl(GetIt.I.get<DIimpl>().getDioInstance()));
  _instance.registerSingleton(MyRouter());
  _instance.registerSingleton(RouterManager(_instance.get<MyRouter>().router));
  _instance.registerSingleton(ProjectManager(
      _instance.get<TrelloApi>(),
      _instance.get<RouterManager>(),
  ),
  );
  _instance.registerSingleton(ChangeNotifierProvider((ref) => _instance.get<ProjectManager>()));
  _instance.registerSingleton(UserManager());
  _instance.registerSingleton(AuthManager(
      _instance.get<TrelloApi>(),
    _instance.get<RouterManager>(),
    _instance.get<UserManager>(),
    _instance.get<ProjectManager>(),
  ),
  );
}