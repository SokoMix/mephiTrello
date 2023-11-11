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
  Future<String> loginUser(Map<String, dynamic> userMap) async { // tested
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
      throw Exception('Something not ok');
    }
  }

  @override
  Future<String> registerUser(Map<String, dynamic> userMap) async { // tested
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
      throw Exception('Something not ok');
    }
  }

  Future<List<dynamic>> getProjects() async { // tested
    try {
      Response req = await _instance.get(
        '/${_id}/projects'
      );
      return jsonDecode(req.data)['projects'];
    } catch(e) {
      if (e is DioException) {
        rethrow;
      }
      throw Exception('Something not ok');
    }
  }
}
