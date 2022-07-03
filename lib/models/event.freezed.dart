// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "datetime_utc")
  @DateTimeSerializer()
  DateTime get datetime => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(readValue: readLocation)
  String get location => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(readValue: readName)
  String get imageUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  dynamic get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0)
          int id,
      @HiveField(1)
          String title,
      @HiveField(2)
      @JsonKey(name: "datetime_utc")
      @DateTimeSerializer()
          DateTime datetime,
      @HiveField(3)
      @JsonKey(readValue: readLocation)
          String location,
      @HiveField(4)
      @JsonKey(readValue: readName)
          String imageUrl,
      @HiveField(5)
          dynamic isFavorite});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? datetime = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$_EventCopyWith(_$_Event value, $Res Function(_$_Event) then) =
      __$$_EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0)
          int id,
      @HiveField(1)
          String title,
      @HiveField(2)
      @JsonKey(name: "datetime_utc")
      @DateTimeSerializer()
          DateTime datetime,
      @HiveField(3)
      @JsonKey(readValue: readLocation)
          String location,
      @HiveField(4)
      @JsonKey(readValue: readName)
          String imageUrl,
      @HiveField(5)
          dynamic isFavorite});
}

/// @nodoc
class __$$_EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$$_EventCopyWith<$Res> {
  __$$_EventCopyWithImpl(_$_Event _value, $Res Function(_$_Event) _then)
      : super(_value, (v) => _then(v as _$_Event));

  @override
  _$_Event get _value => super._value as _$_Event;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? datetime = freezed,
    Object? location = freezed,
    Object? imageUrl = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_Event(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed ? _value.isFavorite : isFavorite,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Event extends _Event {
  _$_Event(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.title,
      @HiveField(2)
      @JsonKey(name: "datetime_utc")
      @DateTimeSerializer()
          required this.datetime,
      @HiveField(3)
      @JsonKey(readValue: readLocation)
          required this.location,
      @HiveField(4)
      @JsonKey(readValue: readName)
          required this.imageUrl,
      @HiveField(5)
          this.isFavorite = false})
      : super._();

  factory _$_Event.fromJson(Map<String, dynamic> json) =>
      _$$_EventFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: "datetime_utc")
  @DateTimeSerializer()
  final DateTime datetime;
  @override
  @HiveField(3)
  @JsonKey(readValue: readLocation)
  final String location;
  @override
  @HiveField(4)
  @JsonKey(readValue: readName)
  final String imageUrl;
  @override
  @JsonKey()
  @HiveField(5)
  final dynamic isFavorite;

  @override
  String toString() {
    return 'Event(id: $id, title: $title, datetime: $datetime, location: $location, imageUrl: $imageUrl, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Event &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(datetime),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  _$$_EventCopyWith<_$_Event> get copyWith =>
      __$$_EventCopyWithImpl<_$_Event>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventToJson(this);
  }
}

abstract class _Event extends Event {
  factory _Event(
      {@HiveField(0)
          required final int id,
      @HiveField(1)
          required final String title,
      @HiveField(2)
      @JsonKey(name: "datetime_utc")
      @DateTimeSerializer()
          required final DateTime datetime,
      @HiveField(3)
      @JsonKey(readValue: readLocation)
          required final String location,
      @HiveField(4)
      @JsonKey(readValue: readName)
          required final String imageUrl,
      @HiveField(5)
          final dynamic isFavorite}) = _$_Event;
  _Event._() : super._();

  factory _Event.fromJson(Map<String, dynamic> json) = _$_Event.fromJson;

  @override
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  @JsonKey(name: "datetime_utc")
  @DateTimeSerializer()
  DateTime get datetime => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  @JsonKey(readValue: readLocation)
  String get location => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  @JsonKey(readValue: readName)
  String get imageUrl => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  dynamic get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EventCopyWith<_$_Event> get copyWith =>
      throw _privateConstructorUsedError;
}
