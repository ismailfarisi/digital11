import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:digital11/core/injector.dart';
import 'package:digital11/data/repository/event_repository.dart';
import 'package:digital11/data/repository/favorite_event_repository.dart';
import 'package:digital11/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../models/event.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc(this._favoriteEventRepository, this._eventRepository)
      : super((const HomePageState())) {
    on<_OnSearch>(_onSearchEvent);
    on<_LoadFavoriteEvents>(_loadFavoriteEvents);
    on<_IsSearching>(_isSearching);
  }

  final FavoriteEventRepository _favoriteEventRepository;
  final EventRepository _eventRepository;

  FutureOr<void> _onSearchEvent(
      _OnSearch event, Emitter<HomePageState> emit) async {
    emit(state.copyWith(searchStatus: Status.loading));
    final result = await _eventRepository.getEvents(event.keyword);
    result.when(success: ((value) {
      final searchlistMap =
          value.asMap().map((key, value) => MapEntry(value.id, value));
      final favoritelistMap = state.favoriteEvents
          .asMap()
          .map((key, value) => MapEntry(value.id, value));

      favoritelistMap.forEach((key, value) {
        searchlistMap[key] = value;
      });
      emit(state.copyWith(
        searchStatus: Status.success,
        searchResults: searchlistMap.values.toList(),
      ));
    }), error: (e) {
      emit(state.copyWith(searchStatus: Status.error));
    });
  }

  FutureOr<void> _loadFavoriteEvents(
      _LoadFavoriteEvents event, Emitter<HomePageState> emit) async {
    final result = await _favoriteEventRepository.getFavoriteEvents();
    result.when(success: ((value) {
      emit(state.copyWith(
        favoriteEvents: value,
      ));
    }), error: (e) {
      emit(state.copyWith(
        favoriteEvents: [],
      ));
    });
  }

  FutureOr<void> _isSearching(_IsSearching event, Emitter<HomePageState> emit) {
    if (event.isSearching) {
      emit(state.copyWith(isSearching: true));
    } else {
      emit(state.copyWith(isSearching: false));
    }
  }
}
