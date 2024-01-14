import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/domain/user_manager.dart';
import 'package:mephi_trello/pages/auth/auth_manager.dart';
import 'package:mephi_trello/pages/homepage/tasks/tasks_manager.dart';
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
      baseUrl: 'https://8e0b-213-24-135-80.ngrok-free.app',
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
  _instance.registerSingleton<TrelloApi>(
      TrelloApiImpl(GetIt.I.get<DIimpl>().getDioInstance()));
  _instance.registerSingleton(MyRouter());
  _instance.registerSingleton(RouterManager(_instance.get<MyRouter>().router));
  _instance.registerSingleton(
    ChangeNotifierProvider(
      (ref) => TaskManager(
        _instance.get<TrelloApi>(),
        _instance.get<RouterManager>(),
      ),
    ),
  );
  _instance.registerSingleton(
    ChangeNotifierProvider(
      (ref) => ProjectManager(
        _instance.get<TrelloApi>(),
        _instance.get<RouterManager>(),
        ref.watch(_instance.get<ChangeNotifierProvider<TaskManager>>()),
      ),
    ),
  );
  _instance.registerSingleton(ChangeNotifierProvider((ref) => UserManager()));
  _instance.registerSingleton(
    ChangeNotifierProvider(
      (ref) => AuthManager(
        _instance.get<TrelloApi>(),
        _instance.get<RouterManager>(),
        ref.watch(_instance.get<ChangeNotifierProvider<UserManager>>()),
        ref.watch(_instance.get<ChangeNotifierProvider<ProjectManager>>()),
      ),
    ),
  );
}
