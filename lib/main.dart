import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/di/DI.dart';
import 'package:mephi_trello/domain/model/user.dart';
import 'package:mephi_trello/providers/providers.dart';
import 'package:mephi_trello/service/API_provider.dart';
import 'package:mephi_trello/storage/local_cache.dart';
import 'package:mephi_trello/storage/local_cache_impl.dart';
import 'package:mephi_trello/theme/dark_theme.dart';
import 'package:mephi_trello/theme/light_theme.dart';
import 'package:mephi_trello/service/trello_API.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/homepage/homepage.dart';
import 'router/router.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  registerDI();
  SharedPrefs a1 = SharedPrefsImpl();
  //a1.init(await DIimpl().getSharedPrefsInstance());
  runApp(ProviderScope(
    parent: Providers().providerContainer(),
      child: const MyApp(),
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: GetIt.I.get<MyRouter>().router,
    );
  }
}
