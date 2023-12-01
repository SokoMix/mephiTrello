import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/DI/DI.dart';
import 'package:mephi_trello/domain/model/column.dart';
import 'package:mephi_trello/domain/model/project.dart';
import 'package:mephi_trello/domain/model/task.dart';
import 'package:mephi_trello/domain/model/user.dart';
import 'package:mephi_trello/service/trello_API.dart';

void main() {
  GetIt.I.registerSingleton(DIimpl());
  TrelloApi api = TrelloApiImpl(GetIt.I<DIimpl>().getDioInstance(null));
  User? user;

  group('Creating models', () {
    test('Login1', () async {
      user = await api.loginUser('Dima', 'Dima');
      expect(
        user,
        User(
          name: 'Dima',
          login: 'Dima',
          password: 'Dima',
          user_id: 'b0496881-bf20-4fb9-b739-da37a85ad67a',
          projects: [],
        ),
      );
    });

    test('Create project', () async {
      expect(
        await api.addProject(
          Project(
            project_id: '121412',
            owner_id: user!.user_id,
            name: 'TestProj',
            color: 12937,
          ),
        ),
        'ok',
      );
    });

    test('Create column', () async {
      expect(
        await api.addColumn(
          '121412',
          Column(column_id: '12414121', project_id: '121412', name: 'First'),
        ),
        'ok',
      );
    });

    test('Create task', () async {
      expect(
        await api.addTask(
          '121412',
          '12414121',
          Task(
            name: 'Task1',
            column_id: '12414121',
            task_id: '987654235',
            project_id: '121412',
          ),
        ),
        'ok',
      );

      expect(
        await api.addTask(
          '121412',
          '12414121',
          Task(
            name: 'Task1',
            column_id: '12414121',
            task_id: '3287454129820',
            project_id: '121412',
            deadline: DateTime(2023, 06, 11, 12),
            performers: ['b0496881-bf20-4fb9-b739-da37a85ad67a'],
          ),
        ),
        'ok',
      );
    });
  });

  group('Getting models', () {
    test('Login3', () async {
      user = await api.loginUser('Dima', 'Dima');
      expect(1, 1);
    });

    test('Getting projects of user', () async {
      expect(
        (await api.getProjects())[0],
        Project(
          project_id: '121412',
          owner_id: user!.user_id,
          name: 'TestProj',
          color: 12937,
        ),
      );
    });

    test('Getting task for date', () async {
      expect(
        (await api.getTasksForDate('121412', DateTime(2023, 06, 11)))[0],
        Task(
          name: 'Task1',
          column_id: '12414121',
          task_id: '3287454129820',
          project_id: '121412',
          deadline: DateTime(2023, 06, 11, 12),
          performers: ['b0496881-bf20-4fb9-b739-da37a85ad67a'],
        ),
      );
    });
  });

  group('Deleting models', () {
    test('Login2', () async {
      user = await api.loginUser('Dima', 'Dima');
      expect(1, 1);
    });

    test('Delete task', () async {
      expect(await api.deleteTask('987654235'), 'ok');
      expect(await api.deleteTask('3287454129820'), 'ok');
    });

    test('Delete column', () async {
      expect(await api.deleteColumn('121412', '12414121'), 'ok');
    });

    test('Delete project', () async {
      expect(await api.deleteProject('121412'), 'ok');
    });
  });
}
