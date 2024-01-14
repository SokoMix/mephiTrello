import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/pages/auth/auth_manager.dart';

class AuthPage extends StatefulHookWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _authManagerProvider = GetIt.I.get<ChangeNotifierProvider<AuthManager>>();

  @override
  Widget build(BuildContext context) {
    final _loginCtrl = useTextEditingController();
    final _pswdCtrl = useTextEditingController();
    return Material(
      child: Center(
        child: Consumer(
          builder: (context, ref, _) {
            return Column(
              children: [
                TextField(
                  controller: _loginCtrl,
                ),
                TextField(
                  controller: _pswdCtrl,
                ),
                TextButton(
                  onPressed: (){ref.watch(_authManagerProvider).login(_loginCtrl.text, _pswdCtrl.text);},
                  child: Text('Login'),
                ),
                TextButton(
                  onPressed: (){ref.watch(_authManagerProvider).toRegistrationPage();},
                  child: Text('Register'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
