import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mephi_trello/domain/model/project.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @Default('') String user_id,
    required String name,
    required String login,
    required String password,
    @Default([]) List<String> projects,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
