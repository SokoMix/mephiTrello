// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ColumnImpl _$$ColumnImplFromJson(Map<String, dynamic> json) => _$ColumnImpl(
      column_id: json['column_id'] as String,
      project_id: json['project_id'] as String,
      name: json['name'] as String,
      tasks:
          (json['tasks'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$ColumnImplToJson(_$ColumnImpl instance) =>
    <String, dynamic>{
      'column_id': instance.column_id,
      'project_id': instance.project_id,
      'name': instance.name,
      'tasks': instance.tasks,
    };
