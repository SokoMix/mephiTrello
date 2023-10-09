import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/storage/local_cache.dart';
import 'package:mephi_trello/storage/local_cache_impl.dart';

import 'DI/DI.dart';

Future main() async {
  GetIt.I.registerSingleton<DI>(DIimpl());
  SharedPrefs a1 = SharedPrefsImpl();
  a1.init(await DIimpl().getSharedPrefsInstance());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Empty')),
    );
  }
}
