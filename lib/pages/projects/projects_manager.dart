import 'package:flutter/material.dart';
import 'package:mephi_trello/router/router_manager.dart';
import 'package:mephi_trello/service/trello_API.dart';

import '../../domain/model/project.dart';

class ProjectManager extends ChangeNotifier {
  final TrelloApi _api;
  final RouterManager _routerManager;
  List<Project>? _projects;

  List<Project> get projects => _projects ?? [];

  ProjectManager(this._api, this._routerManager);

  Future<void> loadProjects() async {
    _projects = await _api.getProjects();
    notifyListeners();
  }
  
  Future<void> createProject(String name) async {
    await _api.addProject(Project(name: name));
    await loadProjects();
    notifyListeners();
  }

  Widget mapProjects()
    => Column(
      children: _formatProjects(),
    );

  List<Widget> _formatProjects() => projects.map(
          (e) =>
              TextButton(
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
                onPressed: () { _routerManager.goTasksPage(); },
                child: Text('${e.name}'),
              ),
  ).toList();
}