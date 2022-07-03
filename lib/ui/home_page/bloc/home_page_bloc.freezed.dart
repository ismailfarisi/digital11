// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) onSearch,
    required TResult Function() loadFavoriteEvents,
    required TResult Function(bool isSearching) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSearch value) onSearch,
    required TResult Function(_LoadFavoriteEvents value) loadFavoriteEvents,
    required TResult Function(_IsSearching value) isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  final HomePageEvent _value;
  // ignore: unused_field
  final $Res Function(HomePageEvent) _then;
}

/// @nodoc
abstract class _$$_OnSearchCopyWith<$Res> {
  factory _$$_OnSearchCopyWith(
          _$_OnSearch value, $Res Function(_$_OnSearch) then) =
      __$$_OnSearchCopyWithImpl<$Res>;
  $Res call({String keyword});
}

/// @nodoc
class __$$_OnSearchCopyWithImpl<$Res> extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_OnSearchCopyWith<$Res> {
  __$$_OnSearchCopyWithImpl(
      _$_OnSearch _value, $Res Function(_$_OnSearch) _then)
      : super(_value, (v) => _then(v as _$_OnSearch));

  @override
  _$_OnSearch get _value => super._value as _$_OnSearch;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_$_OnSearch(
      keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnSearch implements _OnSearch {
  const _$_OnSearch(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'HomePageEvent.onSearch(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnSearch &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$$_OnSearchCopyWith<_$_OnSearch> get copyWith =>
      __$$_OnSearchCopyWithImpl<_$_OnSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) onSearch,
    required TResult Function() loadFavoriteEvents,
    required TResult Function(bool isSearching) isSearching,
  }) {
    return onSearch(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
  }) {
    return onSearch?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSearch value) onSearch,
    required TResult Function(_LoadFavoriteEvents value) loadFavoriteEvents,
    required TResult Function(_IsSearching value) isSearching,
  }) {
    return onSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
  }) {
    return onSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (onSearch != null) {
      return onSearch(this);
    }
    return orElse();
  }
}

abstract class _OnSearch implements HomePageEvent {
  const factory _OnSearch(final String keyword) = _$_OnSearch;

  String get keyword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_OnSearchCopyWith<_$_OnSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadFavoriteEventsCopyWith<$Res> {
  factory _$$_LoadFavoriteEventsCopyWith(_$_LoadFavoriteEvents value,
          $Res Function(_$_LoadFavoriteEvents) then) =
      __$$_LoadFavoriteEventsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadFavoriteEventsCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_LoadFavoriteEventsCopyWith<$Res> {
  __$$_LoadFavoriteEventsCopyWithImpl(
      _$_LoadFavoriteEvents _value, $Res Function(_$_LoadFavoriteEvents) _then)
      : super(_value, (v) => _then(v as _$_LoadFavoriteEvents));

  @override
  _$_LoadFavoriteEvents get _value => super._value as _$_LoadFavoriteEvents;
}

/// @nodoc

class _$_LoadFavoriteEvents implements _LoadFavoriteEvents {
  const _$_LoadFavoriteEvents();

  @override
  String toString() {
    return 'HomePageEvent.loadFavoriteEvents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadFavoriteEvents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) onSearch,
    required TResult Function() loadFavoriteEvents,
    required TResult Function(bool isSearching) isSearching,
  }) {
    return loadFavoriteEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
  }) {
    return loadFavoriteEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
    required TResult orElse(),
  }) {
    if (loadFavoriteEvents != null) {
      return loadFavoriteEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSearch value) onSearch,
    required TResult Function(_LoadFavoriteEvents value) loadFavoriteEvents,
    required TResult Function(_IsSearching value) isSearching,
  }) {
    return loadFavoriteEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
  }) {
    return loadFavoriteEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (loadFavoriteEvents != null) {
      return loadFavoriteEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoriteEvents implements HomePageEvent {
  const factory _LoadFavoriteEvents() = _$_LoadFavoriteEvents;
}

/// @nodoc
abstract class _$$_IsSearchingCopyWith<$Res> {
  factory _$$_IsSearchingCopyWith(
          _$_IsSearching value, $Res Function(_$_IsSearching) then) =
      __$$_IsSearchingCopyWithImpl<$Res>;
  $Res call({bool isSearching});
}

/// @nodoc
class __$$_IsSearchingCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res>
    implements _$$_IsSearchingCopyWith<$Res> {
  __$$_IsSearchingCopyWithImpl(
      _$_IsSearching _value, $Res Function(_$_IsSearching) _then)
      : super(_value, (v) => _then(v as _$_IsSearching));

  @override
  _$_IsSearching get _value => super._value as _$_IsSearching;

  @override
  $Res call({
    Object? isSearching = freezed,
  }) {
    return _then(_$_IsSearching(
      isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsSearching implements _IsSearching {
  const _$_IsSearching(this.isSearching);

  @override
  final bool isSearching;

  @override
  String toString() {
    return 'HomePageEvent.isSearching(isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsSearching &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(isSearching));

  @JsonKey(ignore: true)
  @override
  _$$_IsSearchingCopyWith<_$_IsSearching> get copyWith =>
      __$$_IsSearchingCopyWithImpl<_$_IsSearching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String keyword) onSearch,
    required TResult Function() loadFavoriteEvents,
    required TResult Function(bool isSearching) isSearching,
  }) {
    return isSearching(this.isSearching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
  }) {
    return isSearching?.call(this.isSearching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String keyword)? onSearch,
    TResult Function()? loadFavoriteEvents,
    TResult Function(bool isSearching)? isSearching,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(this.isSearching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnSearch value) onSearch,
    required TResult Function(_LoadFavoriteEvents value) loadFavoriteEvents,
    required TResult Function(_IsSearching value) isSearching,
  }) {
    return isSearching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
  }) {
    return isSearching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnSearch value)? onSearch,
    TResult Function(_LoadFavoriteEvents value)? loadFavoriteEvents,
    TResult Function(_IsSearching value)? isSearching,
    required TResult orElse(),
  }) {
    if (isSearching != null) {
      return isSearching(this);
    }
    return orElse();
  }
}

abstract class _IsSearching implements HomePageEvent {
  const factory _IsSearching(final bool isSearching) = _$_IsSearching;

  bool get isSearching => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_IsSearchingCopyWith<_$_IsSearching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomePageState {
  List<Event> get favoriteEvents => throw _privateConstructorUsedError;
  List<Event> get searchResults => throw _privateConstructorUsedError;
  Status get searchStatus => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res>;
  $Res call(
      {List<Event> favoriteEvents,
      List<Event> searchResults,
      Status searchStatus,
      bool isSearching});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  final HomePageState _value;
  // ignore: unused_field
  final $Res Function(HomePageState) _then;

  @override
  $Res call({
    Object? favoriteEvents = freezed,
    Object? searchResults = freezed,
    Object? searchStatus = freezed,
    Object? isSearching = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteEvents: favoriteEvents == freezed
          ? _value.favoriteEvents
          : favoriteEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchStatus: searchStatus == freezed
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_HomePageStateCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$_HomePageStateCopyWith(
          _$_HomePageState value, $Res Function(_$_HomePageState) then) =
      __$$_HomePageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Event> favoriteEvents,
      List<Event> searchResults,
      Status searchStatus,
      bool isSearching});
}

/// @nodoc
class __$$_HomePageStateCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res>
    implements _$$_HomePageStateCopyWith<$Res> {
  __$$_HomePageStateCopyWithImpl(
      _$_HomePageState _value, $Res Function(_$_HomePageState) _then)
      : super(_value, (v) => _then(v as _$_HomePageState));

  @override
  _$_HomePageState get _value => super._value as _$_HomePageState;

  @override
  $Res call({
    Object? favoriteEvents = freezed,
    Object? searchResults = freezed,
    Object? searchStatus = freezed,
    Object? isSearching = freezed,
  }) {
    return _then(_$_HomePageState(
      favoriteEvents: favoriteEvents == freezed
          ? _value._favoriteEvents
          : favoriteEvents // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchResults: searchResults == freezed
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<Event>,
      searchStatus: searchStatus == freezed
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as Status,
      isSearching: isSearching == freezed
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomePageState implements _HomePageState {
  const _$_HomePageState(
      {final List<Event> favoriteEvents = const [],
      final List<Event> searchResults = const [],
      this.searchStatus = Status.init,
      this.isSearching = false})
      : _favoriteEvents = favoriteEvents,
        _searchResults = searchResults;

  final List<Event> _favoriteEvents;
  @override
  @JsonKey()
  List<Event> get favoriteEvents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteEvents);
  }

  final List<Event> _searchResults;
  @override
  @JsonKey()
  List<Event> get searchResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  @JsonKey()
  final Status searchStatus;
  @override
  @JsonKey()
  final bool isSearching;

  @override
  String toString() {
    return 'HomePageState(favoriteEvents: $favoriteEvents, searchResults: $searchResults, searchStatus: $searchStatus, isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomePageState &&
            const DeepCollectionEquality()
                .equals(other._favoriteEvents, _favoriteEvents) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults) &&
            const DeepCollectionEquality()
                .equals(other.searchStatus, searchStatus) &&
            const DeepCollectionEquality()
                .equals(other.isSearching, isSearching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favoriteEvents),
      const DeepCollectionEquality().hash(_searchResults),
      const DeepCollectionEquality().hash(searchStatus),
      const DeepCollectionEquality().hash(isSearching));

  @JsonKey(ignore: true)
  @override
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      __$$_HomePageStateCopyWithImpl<_$_HomePageState>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {final List<Event> favoriteEvents,
      final List<Event> searchResults,
      final Status searchStatus,
      final bool isSearching}) = _$_HomePageState;

  @override
  List<Event> get favoriteEvents => throw _privateConstructorUsedError;
  @override
  List<Event> get searchResults => throw _privateConstructorUsedError;
  @override
  Status get searchStatus => throw _privateConstructorUsedError;
  @override
  bool get isSearching => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_HomePageStateCopyWith<_$_HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}
