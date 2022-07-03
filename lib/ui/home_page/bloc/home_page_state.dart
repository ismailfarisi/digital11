part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    @Default([]) List<Event> favoriteEvents,
    @Default([]) List<Event> searchResults,
    @Default(Status.init) Status searchStatus,
    @Default(false) bool isSearching,
  }) = _HomePageState;
}
