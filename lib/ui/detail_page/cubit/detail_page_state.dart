part of 'detail_page_cubit.dart';

@freezed
class DetailPageState with _$DetailPageState {
  const factory DetailPageState({
    @Default(Status.init) Status getEventStatus,
    Event? event,
    @Default(Status.init) Status addToFavoriteStatus,
    @Default(Status.init) Status removeFromFavoriteStatus,
  }) = _DetailPageState;
}
