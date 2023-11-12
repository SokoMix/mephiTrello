import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../DI/DI.dart';
import 'trello_API.dart';

class TrelloApiImpl implements TrelloApi {
  Dio _instance;
  String _id = '';

  TrelloApiImpl(this._instance);

  @override
  Future<String> loginUser(Map<String, dynamic> userMap) async {
    // tested
    userMap.remove('name');
    try {
      Response req = await _instance.get(
        '/loginUser',
        data: {
          'user': userMap,
        },
      );
      _instance = GetIt.I<DIimpl>().getDioInstance(req.data['user_id']);
      _id = req.data['user_id'];
      return req.data['user_id'];
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> registerUser(Map<String, dynamic> userMap) async {
    // tested
    try {
      Response req = await _instance.post(
        '/addUser',
        data: {
          'user': userMap,
        },
      );
      return req.data['user_id'];
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  /// Returns List of Project's maps
  /// LIST CAN BE EMPTY
  Future<List<dynamic>> getProjects() async {
    // tested
    try {
      Response req = await _instance.get(
        '/${_id}/projects',
      );
      return jsonDecode(req.data)['projects'];
    } catch (e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok on App side');
    }
  }

  @override
  Future<String> addColumn(
      String projectId, Map<String, dynamic> columnMap) async {
    try {
      Response req = await _instance.post(
        '/${projectId}/column',
        data: {
          'column': columnMap,
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
  Future<String> addProject(Map<String, dynamic> projectMap) async {
    try {
      Response req = await _instance.post(
        '/{$_id}/project',
        data: {
          'project': projectMap,
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
      String projectId, String columnId, Map<String, dynamic> taskMap) async {
    try {
      Response req = await _instance.post(
        '/${projectId}/${columnId}/task',
        data: {
          'task': taskMap,
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
  Future<List> getProjectTable(String projectId) async {
    try {
      Response req = await _instance.get(
        '/${projectId}/table',
      );
      return jsonDecode(req.data)['project_table'];
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
  Future<List> getTasksForDate(String projectId, DateTime date) async {
    try {
      Response req = await _instance.get(
        '/${_id}/${projectId}/${date.toString()}',
      );
      return jsonDecode(req.data)['tasks'];
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
      String projectId, String columnId, Map<String, dynamic> columnMap) async {
    try {
      Response req = await _instance.put(
        '/updclm/${projectId}/${columnId}',
        data: {
          'column': columnMap,
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
      String projectId, String taskId, Map<String, dynamic> taskMap) async {
    try {
      Response req = await _instance.put(
        '/updtask/${projectId}/${taskId}',
        data: {
          'task': taskMap,
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
  Future<String> updateUserInfo(Map<String, dynamic> userMap) async {
    try {
      Response req = await _instance.put(
        '/upd/${_id}',
        data: {
          'user': userMap,
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
}
