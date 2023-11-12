// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get column_id => throw _privateConstructorUsedError;
  String get task_id => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  String get project_id => throw _privateConstructorUsedError;
  List<String> get performers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String name,
      String? description,
      String column_id,
      String task_id,
      DateTime? deadline,
      String project_id,
      List<String> performers});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? column_id = null,
    Object? task_id = null,
    Object? deadline = freezed,
    Object? project_id = null,
    Object? performers = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      column_id: null == column_id
          ? _value.column_id
          : column_id // ignore: cast_nullable_to_non_nullable
              as String,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? description,
      String column_id,
      String task_id,
      DateTime? deadline,
      String project_id,
      List<String> performers});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? column_id = null,
    Object? task_id = null,
    Object? deadline = freezed,
    Object? project_id = null,
    Object? performers = null,
  }) {
    return _then(_$TaskImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      column_id: null == column_id
          ? _value.column_id
          : column_id // ignore: cast_nullable_to_non_nullable
              as String,
      task_id: null == task_id
          ? _value.task_id
          : task_id // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      performers: null == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl implements _Task {
  const _$TaskImpl(
      {required this.name,
      this.description,
      required this.column_id,
      required this.task_id,
      this.deadline,
      required this.project_id,
      final List<String> performers = const []})
      : _performers = performers;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String name;
  @override
  final String? description;
  @override
  final String column_id;
  @override
  final String task_id;
  @override
  final DateTime? deadline;
  @override
  final String project_id;
  final List<String> _performers;
  @override
  @JsonKey()
  List<String> get performers {
    if (_performers is EqualUnmodifiableListView) return _performers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_performers);
  }

  @override
  String toString() {
    return 'Task(name: $name, description: $description, column_id: $column_id, task_id: $task_id, deadline: $deadline, project_id: $project_id, performers: $performers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.column_id, column_id) ||
                other.column_id == column_id) &&
            (identical(other.task_id, task_id) || other.task_id == task_id) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      description,
      column_id,
      task_id,
      deadline,
      project_id,
      const DeepCollectionEquality().hash(_performers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final String name,
      final String? description,
      required final String column_id,
      required final String task_id,
      final DateTime? deadline,
      required final String project_id,
      final List<String> performers}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String get name;
  @override
  String? get description;
  @override
  String get column_id;
  @override
  String get task_id;
  @override
  DateTime? get deadline;
  @override
  String get project_id;
  @override
  List<String> get performers;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
