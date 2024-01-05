import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import 'auth_manager.dart';

class RegistrationPage extends StatefulHookWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  late final AuthManager _authManager;

  @override
  void initState() {
    super.initState();
    _authManager = GetIt.I.get<AuthManager>();
  }

  @override
  Widget build(BuildContext context) {
    final _nameCtrl = useTextEditingController(text: 'name');
    final _loginCtrl = useTextEditingController(text: 'login');
    final _pswdCtrl = useTextEditingController(text: 'pswd');
    return Material(
      child: Column(
        children: [
          TextField(
            controller: _nameCtrl,
          ),
          TextField(
            controller: _loginCtrl,
          ),
          TextField(
            controller: _pswdCtrl,
          ),
          TextButton(
              onPressed: () {
                _authManager.register(
                    name: _nameCtrl.text,
                    login: _loginCtrl.text,
                    password: _pswdCtrl.text,
                );
              },
              child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
