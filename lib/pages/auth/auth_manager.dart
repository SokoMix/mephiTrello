import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mephi_trello/domain/user_manager.dart';
import 'package:mephi_trello/pages/projects/projects_manager.dart';
import 'package:mephi_trello/service/trello_API.dart';

import '../../domain/model/user.dart';
import '../../router/router_manager.dart';

class AuthManager {
  final TrelloApi _api;
  final RouterManager _routerManager;
  final ProjectManager _projectManager;
  final UserManager _userManager;

  AuthManager(
      this._api,
      this._routerManager,
      this._userManager,
      this._projectManager,
  );

  Future<void> login(String login, String password) async {
    try {
      User user = await _api.loginUser(login, password);
      _userManager.login(user);
      await _projectManager.loadProjects();
      _routerManager.goProjectsPage();
    } catch (e) {

    }
  }

  void toRegistrationPage() {
    _routerManager.goRegistrationPage();
  }

  Future<void> register({
    required String name,
    required String login,
    required String password,
  }) async {
    try {
      User user = User(name: name, login: login, password: password);
      user = await _api.registerUser(user);
      _userManager.login(user);
    } catch (e) {

    }
  }
}