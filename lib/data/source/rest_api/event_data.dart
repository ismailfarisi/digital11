import 'package:digital11/data/repository/event_repository.dart';
import 'package:digital11/utils/result.dart';
import 'package:digital11/models/event.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: EventRepository)
class EventData implements EventRepository {
  final Dio _dio;

  EventData(this._dio);

  @override
  Future<Result<Event>> getEventint(id) async {
    try {
      final response = await _dio.get('/events/$id');
      final event = Event.fromJson(response.data);
      return Result.success(event);
    } on Exception catch (e) {
      debugPrint("getEventint error: $e");
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Event>>> getEvents(String searchKeyword) async {
    try {
      final response = await _dio.get('/events?q=$searchKeyword');
      final List<Event> list = (response.data["events"] as List)
          .map((event) => Event.fromJson(event))
          .toList();
      return Result.success(list);
    } catch (e) {
      debugPrint("Error: $e");
      return Result.error(e.toString());
    }
  }
}
