import 'package:freezed_annotation/freezed_annotation.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project({
    required String project_id,
    required String owner_id,
    required String name,
    required int color,
    required List<String> perfomers,
  }) = _Project;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);
}