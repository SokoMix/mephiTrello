import 'package:flutter/material.dart';
import 'package:mephi_trello/utils/logger.dart';

import 'model/user.dart';

class UserManager extends ChangeNotifier {
  User? _user;

  UserManager();

  void login(User user) {
    _user = user;
    Logger.debugData('${user.toJson()}');
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}
