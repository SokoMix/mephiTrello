import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/pages/projects/projects_manager.dart';
import 'package:mephi_trello/pages/projects/widgets/animatedTextEdit.dart';

class ProjectPage extends StatefulHookWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final _projectManagerProvider =
      GetIt.I.get<ChangeNotifierProvider<ProjectManager>>();
  List<Widget> _performers = [];
  List<TextEditingController> _controllersPerformers = [];

  @override
  Widget build(BuildContext context) {
    final _nameCtrl = useTextEditingController(text: 'Proj name');

    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    ref.watch(_projectManagerProvider).mapProjects(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setState) {
                  return WillPopScope(
                      onWillPop: () {
                        _performers.clear();
                        _controllersPerformers.clear();
                        return Future.value(true);
                      },
                      child: Material(
                        child: SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              TextField(
                                controller: _nameCtrl,
                              ),
                              Text('Укажите исполнителей(id)'),
                              Column(
                                children: _performers,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    void deleteIdField(
                                        TextEditingController edt) {
                                      final ind =
                                          _controllersPerformers.indexOf(edt);
                                      _performers.removeAt(ind);
                                      _controllersPerformers.removeAt(ind);
                                      setState(() {});
                                    }

                                    void deleteAll() {
                                      _performers.clear();
                                      _controllersPerformers.clear();
                                      setState(() {});
                                    }

                                    final ctrl = TextEditingController(
                                        text: 'Введите id');
                                    _controllersPerformers.add(ctrl);
                                    _performers.add(
                                      AnimatedTextForm(
                                        ctrl,
                                        deleteIdField,
                                        deleteAll,
                                      ),
                                    );
                                  });
                                },
                                icon: Icon(Icons.add),
                              ),
                              Consumer(
                                builder: (context, ref, _) {
                                  return TextButton(
                                    onPressed: () {
                                      ref
                                          .watch(_projectManagerProvider)
                                          .createProject(
                                            _nameCtrl.text,
                                            performers: _controllersPerformers
                                                .map((e) => e.text)
                                                .toList(),
                                          );
                                      Navigator.pop(context);
                                    },
                                    child: Text('Ok'),
                                  );
                                },
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height / 2,
                              ),
                            ],
                          ),
                        ),
                      ));
                },
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
