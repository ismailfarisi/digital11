import 'package:digital11/models/event.dart';
import 'package:digital11/utils/result.dart';

abstract class FavoriteEventRepository {
  Future<Result<List<Event>>> getFavoriteEvents();
  Future<Result<void>> addFavoriteEvent(Event event);
  Future<Result<void>> removeFavoriteEvent(Event event);
}
