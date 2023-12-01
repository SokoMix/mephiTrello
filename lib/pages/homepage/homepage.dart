import 'package:flutter/material.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/homepage_appbar.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/dialog_box.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox();
      },
    );
  }

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
        padding: EdgeInsets.only(top: 10),
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
            // CustomScrollView(
            //   slivers: [
            //     SliverList(
            //       delegate: SliverChildBuilderDelegate(
            //         (context, int index) {
            //           return Column(
            //             children: [
            //               //MainList(),
            //             ],
            //           );
            //         },
            //         childCount: 1,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(
          Icons.add,
          size: 50,
          color: Color(0xFFFF993D),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        shape: CircleBorder(
          side: BorderSide(
            color: Color(0xFFFF993D),
            width: 2,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFD3D3D3),
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.message_sharp,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
