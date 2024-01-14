import 'package:go_router/go_router.dart';

import 'route_names.dart';

class RouterManager {
  final GoRouter _router;
  RouterManager(this._router);

  void goProjectsPage() {
    _router.goNamed(RouteNames.projects);
  }

  void goLoginPage() {
    _router.goNamed(RouteNames.login);
  }

  void goTasksPage() {
    _router.goNamed(RouteNames.tasks);
  }

  void goRegistrationPage() {
    _router.goNamed(RouteNames.registration);
  }
}