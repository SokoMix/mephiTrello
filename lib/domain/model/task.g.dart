// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      name: json['name'] as String,
      description: json['description'] as String?,
      column_id: json['column_id'] as String,
      task_id: json['task_id'] as String,
      deadline: _$JsonConverterFromJson<int, DateTime>(
          json['deadline'], const UnixTimeSerializer().fromJson),
      project_id: json['project_id'] as String,
      performers: (json['performers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'column_id': instance.column_id,
      'task_id': instance.task_id,
      'deadline': _$JsonConverterToJson<int, DateTime>(
          instance.deadline, const UnixTimeSerializer().toJson),
      'project_id': instance.project_id,
      'performers': instance.performers,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
