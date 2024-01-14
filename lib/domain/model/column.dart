import 'package:freezed_annotation/freezed_annotation.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezed
class Column with _$Column {
  const factory Column({
    required String column_id,
    required String project_id,
    required String name,
    @Default([]) List<String> tasks,
  }) = _Column;

  factory Column.fromJson(Map<String, dynamic> json) => _$ColumnFromJson(json);
}
