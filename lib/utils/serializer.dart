import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();
  @override
  fromJson(json) {
    return DateTime.tryParse(json) ?? DateTime.now();
  }

  @override
  toJson(object) {
    return object.toIso8601String();
  }
}
