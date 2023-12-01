import 'package:flutter/material.dart';

class HomePage_AppBar extends StatefulWidget {
  const HomePage_AppBar({super.key});

  @override
  State<HomePage_AppBar> createState() => _HomePage_AppBarState();
}

class _HomePage_AppBarState extends State<HomePage_AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.filter_alt_outlined),
        onPressed: () {},
        color: Theme.of(context).colorScheme.primary,
      ),
      title: Text(
        'Office Work',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
          color: Theme.of(context).colorScheme.primary,
        ),
      ],
    );
  }
}
