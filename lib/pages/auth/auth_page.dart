import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/pages/auth/auth_manager.dart';

class AuthPage extends StatefulHookWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final AuthManager _authManager;

  @override
  void initState() {
    super.initState();
    _authManager = GetIt.I.get<AuthManager>();
  }

  @override
  Widget build(BuildContext context) {
    final _loginCtrl = useTextEditingController();
    final _pswdCtrl = useTextEditingController();
    return Material(
      child: Center(
        child: Column(
          children: [
            TextField(
              controller: _loginCtrl,
            ),
            TextField(
              controller: _pswdCtrl,
            ),
            TextButton(
              onPressed: (){_authManager.login(_loginCtrl.text, _pswdCtrl.text);},
              child: Text('Login'),
            ),
            TextButton(
              onPressed: (){_authManager.toRegistrationPage();},
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
