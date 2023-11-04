import 'package:flutter/material.dart';
import 'package:mephi_trello/pages/homepage/homepage_widgets/task.dart';

class TaskTile extends StatefulWidget {
  final Task _task;
  final int id;

  const TaskTile({Key? key, required this.id, required Task task})
      : _task = task,
        super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0),
      child: Container(
        height: 20,
        color: Colors.red,
      ),
    );
  }
}
