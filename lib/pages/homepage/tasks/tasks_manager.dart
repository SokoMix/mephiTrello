import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/model/task.dart';
import '../../../router/router_manager.dart';
import '../../../service/trello_API.dart';

class TaskManager extends ChangeNotifier {
  String? _projectId;
  List<Task>? _tasks;
  final TrelloApi _api;
  final RouterManager _routerManager;

  List<Task>? get tasks => _tasks;

  TaskManager(
    this._api,
    this._routerManager,
  );
  
  Future<void> loadTasks() async {
    try {
      if (_projectId != null) {
        final tasks = await _api.getProjectTable(_projectId!);
        _tasks = tasks;
      } else {
        throw Exception('Project id is null, error in loading tasks');
      }
    } catch (e) {

    }
  }
  
  void setProjectId(String? projectId) 
    => _projectId = projectId;
  
  Widget mapTasks() {
    return Column(
      children: (_tasks ?? []).map((e) => ListTile(
        title: Text(e.name),
        trailing: Text((e.deadline != null) ? DateFormat.yMEd().format(e.deadline!) : ''),
      ),).toList(),
    );
  }

  Future<void> addTask(Task task) async {
    try {
      final resp = await _api.addTask(_projectId!, task.column_id, task);
    } catch (e) {

    }
  }
}