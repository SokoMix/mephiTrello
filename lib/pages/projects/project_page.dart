import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/pages/projects/projects_manager.dart';

class ProjectPage extends HookWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameCtrl = useTextEditingController();
    
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          return Center(
            child: Column(
              children: [
                ref.watch(GetIt.I.get<ChangeNotifierProvider<ProjectManager>>()).mapProjects(),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Material(
                  child: Column(
                  children: [
                    TextField(
                      controller: _nameCtrl,
                    ),
                    Consumer(
                      builder: (context, ref, _) {
                        return TextButton(
                            onPressed: (){
                              ref.watch(GetIt.I.get<ChangeNotifierProvider<ProjectManager>>()).createProject(_nameCtrl.text);
                              Navigator.pop(context);
                              },
                            child: Text('Ok'),
                        );
                      },
                    ),
                  ],
               ),
                );
              },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
