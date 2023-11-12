// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Column _$ColumnFromJson(Map<String, dynamic> json) {
  return _Column.fromJson(json);
}

/// @nodoc
mixin _$Column {
  String get column_id => throw _privateConstructorUsedError;
  String get project_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get tasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColumnCopyWith<Column> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnCopyWith<$Res> {
  factory $ColumnCopyWith(Column value, $Res Function(Column) then) =
      _$ColumnCopyWithImpl<$Res, Column>;
  @useResult
  $Res call(
      {String column_id, String project_id, String name, List<String> tasks});
}

/// @nodoc
class _$ColumnCopyWithImpl<$Res, $Val extends Column>
    implements $ColumnCopyWith<$Res> {
  _$ColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column_id = null,
    Object? project_id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      column_id: null == column_id
          ? _value.column_id
          : column_id // ignore: cast_nullable_to_non_nullable
              as String,
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColumnImplCopyWith<$Res> implements $ColumnCopyWith<$Res> {
  factory _$$ColumnImplCopyWith(
          _$ColumnImpl value, $Res Function(_$ColumnImpl) then) =
      __$$ColumnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String column_id, String project_id, String name, List<String> tasks});
}

/// @nodoc
class __$$ColumnImplCopyWithImpl<$Res>
    extends _$ColumnCopyWithImpl<$Res, _$ColumnImpl>
    implements _$$ColumnImplCopyWith<$Res> {
  __$$ColumnImplCopyWithImpl(
      _$ColumnImpl _value, $Res Function(_$ColumnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column_id = null,
    Object? project_id = null,
    Object? name = null,
    Object? tasks = null,
  }) {
    return _then(_$ColumnImpl(
      column_id: null == column_id
          ? _value.column_id
          : column_id // ignore: cast_nullable_to_non_nullable
              as String,
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColumnImpl implements _Column {
  const _$ColumnImpl(
      {required this.column_id,
      required this.project_id,
      required this.name,
      required final List<String> tasks})
      : _tasks = tasks;

  factory _$ColumnImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColumnImplFromJson(json);

  @override
  final String column_id;
  @override
  final String project_id;
  @override
  final String name;
  final List<String> _tasks;
  @override
  List<String> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'Column(column_id: $column_id, project_id: $project_id, name: $name, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnImpl &&
            (identical(other.column_id, column_id) ||
                other.column_id == column_id) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, column_id, project_id, name,
      const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnImplCopyWith<_$ColumnImpl> get copyWith =>
      __$$ColumnImplCopyWithImpl<_$ColumnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColumnImplToJson(
      this,
    );
  }
}

abstract class _Column implements Column {
  const factory _Column(
      {required final String column_id,
      required final String project_id,
      required final String name,
      required final List<String> tasks}) = _$ColumnImpl;

  factory _Column.fromJson(Map<String, dynamic> json) = _$ColumnImpl.fromJson;

  @override
  String get column_id;
  @override
  String get project_id;
  @override
  String get name;
  @override
  List<String> get tasks;
  @override
  @JsonKey(ignore: true)
  _$$ColumnImplCopyWith<_$ColumnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
