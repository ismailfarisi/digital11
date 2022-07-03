import 'package:bloc/bloc.dart';
import 'package:digital11/data/repository/favorite_event_repository.dart';
import 'package:digital11/utils/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/repository/event_repository.dart';
import '../../../models/event.dart';

part 'detail_page_state.dart';
part 'detail_page_cubit.freezed.dart';

@injectable
class DetailPageCubit extends Cubit<DetailPageState> {
  DetailPageCubit(this._eventRepository, this._favoriteEventRepository)
      : super(const DetailPageState());
  final EventRepository _eventRepository;
  final FavoriteEventRepository _favoriteEventRepository;
  Future<void> getEvent(int id, [Event? event]) async {
    if (event != null) {
      emit(state.copyWith(event: event, getEventStatus: Status.success));
      return;
    }
    emit(state.copyWith(getEventStatus: Status.loading));
    final result = await _eventRepository.getEventint(id);
    result.when(success: (data) {
      emit(state.copyWith(getEventStatus: Status.success, event: data));
    }, error: (e) {
      emit(state.copyWith(
        getEventStatus: Status.error,
      ));
    });
  }

  Future<void> addToFavorite(Event event) async {
    emit(state.copyWith(addToFavoriteStatus: Status.loading));
    final result = await _favoriteEventRepository.addFavoriteEvent(event);
    result.when(success: (data) {
      emit(state.copyWith(
          addToFavoriteStatus: Status.success,
          event: state.event?.copyWith(isFavorite: true)));
    }, error: (e) {
      emit(state.copyWith(
        addToFavoriteStatus: Status.error,
      ));
    });
  }

  Future<void> removeFromFavorite(Event event) async {
    emit(state.copyWith(removeFromFavoriteStatus: Status.loading));
    final result = await _favoriteEventRepository.removeFavoriteEvent(event);
    result.when(success: (data) {
      emit(state.copyWith(
          removeFromFavoriteStatus: Status.success,
          event: state.event?.copyWith(isFavorite: false)));
    }, error: (e) {
      emit(state.copyWith(
        removeFromFavoriteStatus: Status.error,
      ));
    });
  }
}
