import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../DI/DI.dart';
import '../domain/model/column.dart';
import '../domain/model/task.dart';
import '../domain/model/user.dart';
import 'trello_API.dart';
import 'package:mephi_trello/domain/model/project.dart';

class TrelloApiImpl implements TrelloApi {
  Dio _instance;
  String _id = '';

  TrelloApiImpl(this._instance);

  @override
  Future<User> loginUser(String login, String password) async {
    // tested
    try {
      Response req = await _instance.get(
        '/loginUser',
        data: {
          'user': {
            'login': login,
            'password': password,
          },
        },
      );
      // _instance = GetIt.I<DIimpl>().getDioInstance(req.data['user']['user_id']);
      _id = req.data['user']['user_id'];
      _instance.options.headers = {'Authorization': 'Bearer ${_id ?? ''}'};
      return User.fromJson(req.data['user']);
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<User> registerUser(User user) async {
    // tested
    try {
      Response req = await _instance.post(
        '/addUser',
        data: {
          'user': user.toJson(),
        },
      );
      _id = req.data['user']['user_id'];
      _instance.options.headers = {'Authorization': 'Bearer ${_id ?? ''}'};
      return User.fromJson(req.data['user']);
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  /// Returns List of Project's maps
  /// LIST CAN BE EMPTY
  Future<List<Project>> getProjects() async {
    // tested
    try {
      Response req = await _instance.get(
        '/${_id}/projects',
      );
      List<Project> a = (jsonDecode(req.data)['projects'] as List)
          .map((e) => Project.fromJson(e))
          .toList();
      return a;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> addColumn(
    String projectId,
    Column column,
  ) async {
    try {
      Response req = await _instance.post(
        '/${projectId}/column',
        data: {
          'column': column.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> addProject(Project project) async {
    try {
      Response req = await _instance.post(
        '/${_id}/project',
        data: {
          'project': project.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> addTask(
    String projectId,
    String columnId,
    Task task,
  ) async {
    try {
      Response req = await _instance.post(
        '/${projectId}/${columnId}/task',
        data: {
          'task': task.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  /// Returns List of Columns. Inside Column classes tasks_ids replaced with
  /// Task classes, so retval includes table of Tasks divided on Columns
  /// LIST CAN BE EMPTY
  @override
  Future<List<Task>> getProjectTable(String projectId) async {
    try {
      Response req = await _instance.get(
        '/${projectId}/table',
      );
      return ((jsonDecode(req.data)['project_table']) as List<Map<String, dynamic>>).map((e) => Task.fromJson(e)).toList();
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  /// Returns List of Tasks with current deadline day
  /// LIST CAN BE EMPTY
  @override
  Future<List<Task>> getTasksForDate(String projectId, DateTime date) async {
    try {
      Response req = await _instance.get(
        '/${_id}/${projectId}/${date.toUtc().millisecondsSinceEpoch}',
      );
      return (jsonDecode(req.data)['tasks'] as List)
          .map((e) => Task.fromJson(e))
          .toList();
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> deleteColumn(String projectId, String columnId) async {
    try {
      Response req = await _instance.delete(
        '/dltclm/${projectId}/${columnId}',
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> deleteProject(String projectId) async {
    try {
      Response req = await _instance.delete(
        '/dltprj/${projectId}',
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> deleteTask(String taskId) async {
    try {
      Response req = await _instance.delete(
        '/dlttsk/${taskId}',
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> updateColumn(
    String projectId,
    String columnId,
    Column column,
  ) async {
    try {
      Response req = await _instance.put(
        '/updclm/${projectId}/${columnId}',
        data: {
          'column': column.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> updateTask(
    String projectId,
    String taskId,
    Task task,
  ) async {
    try {
      Response req = await _instance.put(
        '/updtask/${projectId}/${taskId}',
        data: {
          'task': task.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> updateUserInfo(User user) async {
    try {
      Response req = await _instance.put(
        '/upd/${_id}',
        data: {
          'user': user.toJson(),
        },
      );
      return req.data;
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  /// Returns List of Users in current projects. You can use it
  /// for displaying available performers with Id, Name or with smthg else
  @override
  Future<List<User>> getPerformersInProject(String projectId) async {
    try {
      Response resp = await _instance.get(
        '/${projectId}/performers',
      );
      return (jsonDecode(resp.data)['performers'] as List<Map<String, dynamic>>).map((e) => User.fromJson(e)).toList();
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }
}
