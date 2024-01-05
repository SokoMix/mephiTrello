import 'package:go_router/go_router.dart';

class RouterManager {
  final GoRouter _router;
  RouterManager(this._router);

  void goProjectsPage() {
    _router.push('/projects');
  }

  void goLoginPage() {
    _router.push('/');
  }

  void goTasksPage() {
    _router.push('/projects/tasks');
  }

  void goRegistrationPage() {
    _router.push('/registration');
  }
}