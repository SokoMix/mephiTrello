import 'package:flutter/material.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/task.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/task_tile.dart';

class MainList extends StatefulWidget {
  const MainList({super.key});

  @override
  State<MainList> createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [generateList()],
    );
  }
}

List<Widget> generateList(List<Task> data, int count, BuildContext context) {
  List<Widget> retval = [];
  for (int i = 0; i < count; i++) {
    retval.add(TaskTile(id: data[i].id, task: data[i]));
  }
  return retval;
}
