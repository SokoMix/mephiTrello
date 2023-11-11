import 'package:dio/dio.dart';

export 'trello_API_impl.dart';

abstract class TrelloApi {
  Future<String> registerUser(Map<String, dynamic> userMap);
  Future<String> loginUser(Map<String, dynamic> userMap);
  Future<List<dynamic>> getProjects();
}