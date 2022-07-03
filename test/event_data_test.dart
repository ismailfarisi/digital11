import 'package:digital11/models/event.dart';

import 'mock_data.dart';
import 'package:digital11/data/source/rest_api/event_data.dart';
import 'package:digital11/utils/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'event_data.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late Dio dio;
  late EventData eventData;
  setUp(() {
    dio = MockDio();
    eventData = EventData(dio);
  });
  test("get event by id successfully", () async {
    when(dio.get('/events/1')).thenAnswer((_) async => Response(
        data: eventRawMock, requestOptions: RequestOptions(path: "/events/1")));
    final result = await eventData.getEventint(1);
    expect(result, Result.success(eventMock));
  });
  test("get event by id failed", () async {
    when(dio.get('/events/1')).thenThrow(Exception("error"));
    final result = await eventData.getEventint(1);
    expect(result, Result<Event>.error(Exception("error").toString()));
  });
  test("get events successfully", () async {
    when(dio.get('/events?q=test')).thenAnswer((_) async => Response(
        data: eventRawMockList,
        requestOptions: RequestOptions(path: "/events?q=test")));
    final result = await eventData.getEvents("test");
    expect(result, Result.success(eventMockList));
  });

  test("get events failed", () async {
    when(dio.get('/events?q=test')).thenThrow(Exception("error"));
    final result = await eventData.getEvents("test");
    expect(result, Result<List<Event>>.error(Exception("error").toString()));
  });
}
