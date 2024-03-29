import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mephi_trello/utils/datetime_serialize.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String name,
    String? description,
    required String column_id,
    required String task_id,
    @UnixTimeSerializer() DateTime? deadline,
    required String project_id,
    @Default([]) List<String> performers,
  }) = _Task;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
