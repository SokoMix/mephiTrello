// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Project _$ProjectFromJson(Map<String, dynamic> json) {
  return _Project.fromJson(json);
}

/// @nodoc
mixin _$Project {
  String get project_id => throw _privateConstructorUsedError;
  String get owner_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  List<String> get performers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectCopyWith<Project> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectCopyWith<$Res> {
  factory $ProjectCopyWith(Project value, $Res Function(Project) then) =
      _$ProjectCopyWithImpl<$Res, Project>;
  @useResult
  $Res call(
      {String project_id,
      String owner_id,
      String name,
      int color,
      List<String> performers});
}

/// @nodoc
class _$ProjectCopyWithImpl<$Res, $Val extends Project>
    implements $ProjectCopyWith<$Res> {
  _$ProjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project_id = null,
    Object? owner_id = null,
    Object? name = null,
    Object? color = null,
    Object? performers = null,
  }) {
    return _then(_value.copyWith(
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      owner_id: null == owner_id
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      performers: null == performers
          ? _value.performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectImplCopyWith<$Res> implements $ProjectCopyWith<$Res> {
  factory _$$ProjectImplCopyWith(
          _$ProjectImpl value, $Res Function(_$ProjectImpl) then) =
      __$$ProjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String project_id,
      String owner_id,
      String name,
      int color,
      List<String> performers});
}

/// @nodoc
class __$$ProjectImplCopyWithImpl<$Res>
    extends _$ProjectCopyWithImpl<$Res, _$ProjectImpl>
    implements _$$ProjectImplCopyWith<$Res> {
  __$$ProjectImplCopyWithImpl(
      _$ProjectImpl _value, $Res Function(_$ProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project_id = null,
    Object? owner_id = null,
    Object? name = null,
    Object? color = null,
    Object? performers = null,
  }) {
    return _then(_$ProjectImpl(
      project_id: null == project_id
          ? _value.project_id
          : project_id // ignore: cast_nullable_to_non_nullable
              as String,
      owner_id: null == owner_id
          ? _value.owner_id
          : owner_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      performers: null == performers
          ? _value._performers
          : performers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProjectImpl implements _Project {
  const _$ProjectImpl(
      {required this.project_id,
      required this.owner_id,
      required this.name,
      required this.color,
      final List<String> performers = const []})
      : _performers = performers;

  factory _$ProjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProjectImplFromJson(json);

  @override
  final String project_id;
  @override
  final String owner_id;
  @override
  final String name;
  @override
  final int color;
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
    return 'Project(project_id: $project_id, owner_id: $owner_id, name: $name, color: $color, performers: $performers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectImpl &&
            (identical(other.project_id, project_id) ||
                other.project_id == project_id) &&
            (identical(other.owner_id, owner_id) ||
                other.owner_id == owner_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality()
                .equals(other._performers, _performers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, project_id, owner_id, name,
      color, const DeepCollectionEquality().hash(_performers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      __$$ProjectImplCopyWithImpl<_$ProjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProjectImplToJson(
      this,
    );
  }
}

abstract class _Project implements Project {
  const factory _Project(
      {required final String project_id,
      required final String owner_id,
      required final String name,
      required final int color,
      final List<String> performers}) = _$ProjectImpl;

  factory _Project.fromJson(Map<String, dynamic> json) = _$ProjectImpl.fromJson;

  @override
  String get project_id;
  @override
  String get owner_id;
  @override
  String get name;
  @override
  int get color;
  @override
  List<String> get performers;
  @override
  @JsonKey(ignore: true)
  _$$ProjectImplCopyWith<_$ProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
