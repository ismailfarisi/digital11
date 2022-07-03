part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.onSearch(String keyword) = _OnSearch;
  const factory HomePageEvent.loadFavoriteEvents() = _LoadFavoriteEvents;
  const factory HomePageEvent.isSearching(bool isSearching) = _IsSearching;
}
