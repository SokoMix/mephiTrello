// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectImpl _$$ProjectImplFromJson(Map<String, dynamic> json) =>
    _$ProjectImpl(
      project_id: json['project_id'] as String? ?? '',
      owner_id: json['owner_id'] as String? ?? '',
      name: json['name'] as String,
      color: json['color'] as int? ?? 0,
      performers: (json['performers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ProjectImplToJson(_$ProjectImpl instance) =>
    <String, dynamic>{
      'project_id': instance.project_id,
      'owner_id': instance.owner_id,
      'name': instance.name,
      'color': instance.color,
      'performers': instance.performers,
    };
