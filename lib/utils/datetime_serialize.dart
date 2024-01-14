import 'package:json_annotation/json_annotation.dart';

class UnixTimeSerializer implements JsonConverter<DateTime, int> {
  const UnixTimeSerializer();

  @override
  DateTime fromJson(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp);

  @override
  int toJson(DateTime object) => object.toUtc().millisecondsSinceEpoch;
}
