import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mephi_trello/pages/homepage/tasks/tasks_manager.dart';
import 'package:mephi_trello/router/router_manager.dart';
import 'package:mephi_trello/service/trello_API.dart';

import '../../domain/model/project.dart';

class ProjectManager extends ChangeNotifier {
  final TrelloApi _api;
  final RouterManager _routerManager;
  final TaskManager _taskManager;
  Stream<void>? _poolingHandle;
  StreamSubscription<void>? _poolingSub;
  List<Project>? _projects;

  List<Project> get projects => _projects ?? [];

  ProjectManager(
    this._api,
    this._routerManager,
    this._taskManager,
  ) {
    init();
  }

  void init() {
    _poolingHandle = Stream.periodic(Duration(milliseconds: 500), (_) {
      return;
    });
    _poolingSub = _poolingHandle?.listen((event) async {
      final new_projects = await _api.getProjects();
      if (!listEquals(new_projects, _projects)) {
        _projects = new_projects;
        notifyListeners();
      }
    });
    _poolingSub?.pause();
  }

  Future<void> loadProjects() async {
    _poolingSub?.resume();
    _projects = await _api.getProjects();
    notifyListeners();
  }

  Future<void> createProject(String name, {List<String>? performers}) async {
    await _api.addProject(
      Project(
        name: name,
        performers: performers ?? [],
      ),
    );
    await loadProjects();
    notifyListeners();
  }

  Widget mapProjects() => Column(
        children: _formatProjects(),
      );

  List<Widget> _formatProjects() => projects
      .map(
        (e) => TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2.0)),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Color(int.parse('0xFF${e.color.toRadixString(16)}')),
            ),
          ),
          onPressed: () {
            _taskManager.setProjectId(e.project_id);
            _taskManager.loadTasks();
            _routerManager.goTasksPage();
          },
          child: Text('${e.name}'),
        ),
      )
      .toList();
}
