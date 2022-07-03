// ignore_for_file: invalid_annotation_target

import 'package:digital11/utils/serializer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
@HiveType(typeId: 0)
class Event extends HiveObject with _$Event {
  Event._();
  factory Event({
    @HiveField(0)
        required int id,
    @HiveField(1)
        required String title,
    @HiveField(2)
    @JsonKey(
      name: "datetime_utc",
    )
    @DateTimeSerializer()
        required DateTime datetime,
    @HiveField(3)
    @JsonKey(readValue: readLocation)
        required String location,
    @HiveField(4)
    @JsonKey(readValue: readName)
        required String imageUrl,
    @HiveField(5)
    @Default(false)
        isFavorite,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

String readName(Map<dynamic, dynamic> map, String key) {
  final performers = map["performers"] as List;
  if (performers.isEmpty) return "";
  return performers[0]["image"] ?? "";
}

String readLocation(Map<dynamic, dynamic> map, String key) {
  return '${map["venue"]["city"] ?? ""}, ${map["venue"]["state"] ?? ""}, ${map["venue"]["country"] ?? ""}';
}
