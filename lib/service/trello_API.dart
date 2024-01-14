import '../domain/model/project.dart';
import '../domain/model/task.dart';
import '../domain/model/user.dart';
import 'package:mephi_trello/domain/model/column.dart';

export 'trello_API_impl.dart';

abstract class TrelloApi {
  Future<User> registerUser(User user);
  Future<User> loginUser(String login, String password);
  Future<List<Project>> getProjects();
  Future<String> addColumn(String projectId, Column column);
  Future<String> addProject(Project project);
  Future<String> addTask(String projectId, String columnId, Task task);
  Future<List<Task>> getProjectTable(String projectId);
  Future<List<Task>> getTasksForDate(String projectId, DateTime date);
  Future<String> updateTask(String projectId, String taskId, Task task);
  Future<String> updateColumn(String projectId, String columnId, Column column);
  Future<String> updateUserInfo(User user);
  Future<String> deleteColumn(String projectId, String columnId);
  Future<String> deleteTask(String taskId);
  Future<String> deleteProject(String projectId);
  Future<List<User>> getPerformersInProject(String projectId);
}
