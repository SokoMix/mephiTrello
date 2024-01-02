import 'package:flutter/material.dart';

import 'model/user.dart';

class UserManager extends ChangeNotifier {
  User? _user;

  UserManager();

  void login(User user) {
    _user = user;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}