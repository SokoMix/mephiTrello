import 'package:flutter/material.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/appbar.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/main_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.filter_alt_outlined),
          iconSize: Theme.of(context).iconTheme.size,
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
            iconSize: Theme.of(context).iconTheme.size,
            onPressed: () {},
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 120),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_left,
                    color: Colors.black,
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('1'),
                      value: '1',
                    ),
                    PopupMenuItem(
                      child: Text('2'),
                      value: '2',
                    ),
                  ],
                  onSelected: (String newValue) {
                    setState(() {});
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, int index) {
                      return Column(
                        children: [
                          MainList(),
                        ],
                      );
                    },
                    childCount: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
