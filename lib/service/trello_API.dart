export 'trello_API_impl.dart';

abstract class TrelloApi {
  Future<String> registerUser(Map<String, dynamic> userMap);
  Future<String> loginUser(Map<String, dynamic> userMap);
  Future<List<dynamic>> getProjects();
  Future<String> addColumn(String projectId, Map<String, dynamic> columnMap);
  Future<String> addProject(Map<String, dynamic> projectMap);
  Future<String> addTask(String projectId, String columnId, Map<String, dynamic> taskMap);
  Future<List<dynamic>> getProjectTable(String projectId);
  Future<List<dynamic>> getTasksForDate(String projectId, DateTime date);
  Future<String> updateTask(String projectId, String taskId, Map<String, dynamic> taskMap);
  Future<String> updateColumn(String projectId, String columnId, Map<String, dynamic> columnMap);
  Future<String> updateUserInfo(Map<String, dynamic> userMap);
  Future<String> deleteColumn(String projectId, String columnId);
  Future<String> deleteTask(String taskId);
  Future<String> deleteProject(String projectId);
}