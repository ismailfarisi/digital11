import '../../models/event.dart';
import '../../utils/result.dart';

abstract class EventRepository {
  Future<Result<List<Event>>> getEvents(String searchKeyword);
  Future<Result<Event>> getEventint(id);
}
