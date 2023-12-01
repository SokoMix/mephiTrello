import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/domain/model/user.dart';
import 'package:mephi_trello/storage/local_cache.dart';
import 'package:mephi_trello/storage/local_cache_impl.dart';
import 'package:mephi_trello/theme/dark_theme.dart';
import 'package:mephi_trello/theme/light_theme.dart';
import 'package:mephi_trello/service/trello_API.dart';

import 'DI/DI.dart';
import 'pages/homepage/homepage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.I.registerSingleton(DIimpl());
  SharedPrefs a1 = SharedPrefsImpl();
  //a1.init(await DIimpl().getSharedPrefsInstance());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
