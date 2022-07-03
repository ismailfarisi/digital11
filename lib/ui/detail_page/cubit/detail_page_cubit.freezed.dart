// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'detail_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailPageState {
  Status get getEventStatus => throw _privateConstructorUsedError;
  Event? get event => throw _privateConstructorUsedError;
  Status get addToFavoriteStatus => throw _privateConstructorUsedError;
  Status get removeFromFavoriteStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailPageStateCopyWith<DetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPageStateCopyWith<$Res> {
  factory $DetailPageStateCopyWith(
          DetailPageState value, $Res Function(DetailPageState) then) =
      _$DetailPageStateCopyWithImpl<$Res>;
  $Res call(
      {Status getEventStatus,
      Event? event,
      Status addToFavoriteStatus,
      Status removeFromFavoriteStatus});

  $EventCopyWith<$Res>? get event;
}

/// @nodoc
class _$DetailPageStateCopyWithImpl<$Res>
    implements $DetailPageStateCopyWith<$Res> {
  _$DetailPageStateCopyWithImpl(this._value, this._then);

  final DetailPageState _value;
  // ignore: unused_field
  final $Res Function(DetailPageState) _then;

  @override
  $Res call({
    Object? getEventStatus = freezed,
    Object? event = freezed,
    Object? addToFavoriteStatus = freezed,
    Object? removeFromFavoriteStatus = freezed,
  }) {
    return _then(_value.copyWith(
      getEventStatus: getEventStatus == freezed
          ? _value.getEventStatus
          : getEventStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
      addToFavoriteStatus: addToFavoriteStatus == freezed
          ? _value.addToFavoriteStatus
          : addToFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      removeFromFavoriteStatus: removeFromFavoriteStatus == freezed
          ? _value.removeFromFavoriteStatus
          : removeFromFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }

  @override
  $EventCopyWith<$Res>? get event {
    if (_value.event == null) {
      return null;
    }

    return $EventCopyWith<$Res>(_value.event!, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$$_DetailPageStateCopyWith<$Res>
    implements $DetailPageStateCopyWith<$Res> {
  factory _$$_DetailPageStateCopyWith(
          _$_DetailPageState value, $Res Function(_$_DetailPageState) then) =
      __$$_DetailPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Status getEventStatus,
      Event? event,
      Status addToFavoriteStatus,
      Status removeFromFavoriteStatus});

  @override
  $EventCopyWith<$Res>? get event;
}

/// @nodoc
class __$$_DetailPageStateCopyWithImpl<$Res>
    extends _$DetailPageStateCopyWithImpl<$Res>
    implements _$$_DetailPageStateCopyWith<$Res> {
  __$$_DetailPageStateCopyWithImpl(
      _$_DetailPageState _value, $Res Function(_$_DetailPageState) _then)
      : super(_value, (v) => _then(v as _$_DetailPageState));

  @override
  _$_DetailPageState get _value => super._value as _$_DetailPageState;

  @override
  $Res call({
    Object? getEventStatus = freezed,
    Object? event = freezed,
    Object? addToFavoriteStatus = freezed,
    Object? removeFromFavoriteStatus = freezed,
  }) {
    return _then(_$_DetailPageState(
      getEventStatus: getEventStatus == freezed
          ? _value.getEventStatus
          : getEventStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event?,
      addToFavoriteStatus: addToFavoriteStatus == freezed
          ? _value.addToFavoriteStatus
          : addToFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      removeFromFavoriteStatus: removeFromFavoriteStatus == freezed
          ? _value.removeFromFavoriteStatus
          : removeFromFavoriteStatus // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc

class _$_DetailPageState implements _DetailPageState {
  const _$_DetailPageState(
      {this.getEventStatus = Status.init,
      this.event,
      this.addToFavoriteStatus = Status.init,
      this.removeFromFavoriteStatus = Status.init});

  @override
  @JsonKey()
  final Status getEventStatus;
  @override
  final Event? event;
  @override
  @JsonKey()
  final Status addToFavoriteStatus;
  @override
  @JsonKey()
  final Status removeFromFavoriteStatus;

  @override
  String toString() {
    return 'DetailPageState(getEventStatus: $getEventStatus, event: $event, addToFavoriteStatus: $addToFavoriteStatus, removeFromFavoriteStatus: $removeFromFavoriteStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailPageState &&
            const DeepCollectionEquality()
                .equals(other.getEventStatus, getEventStatus) &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other.addToFavoriteStatus, addToFavoriteStatus) &&
            const DeepCollectionEquality().equals(
                other.removeFromFavoriteStatus, removeFromFavoriteStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(getEventStatus),
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(addToFavoriteStatus),
      const DeepCollectionEquality().hash(removeFromFavoriteStatus));

  @JsonKey(ignore: true)
  @override
  _$$_DetailPageStateCopyWith<_$_DetailPageState> get copyWith =>
      __$$_DetailPageStateCopyWithImpl<_$_DetailPageState>(this, _$identity);
}

abstract class _DetailPageState implements DetailPageState {
  const factory _DetailPageState(
      {final Status getEventStatus,
      final Event? event,
      final Status addToFavoriteStatus,
      final Status removeFromFavoriteStatus}) = _$_DetailPageState;

  @override
  Status get getEventStatus => throw _privateConstructorUsedError;
  @override
  Event? get event => throw _privateConstructorUsedError;
  @override
  Status get addToFavoriteStatus => throw _privateConstructorUsedError;
  @override
  Status get removeFromFavoriteStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DetailPageStateCopyWith<_$_DetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
