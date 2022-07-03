import 'dart:async';

import 'package:digital11/utils/result.dart';

import 'package:digital11/models/event.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../repository/favorite_event_repository.dart';

@LazySingleton(dispose: dispose, as: FavoriteEventRepository)
class FavoriteEventsData implements FavoriteEventRepository {
  FavoriteEventsData._();

  @factoryMethod
  static Future<FavoriteEventsData> init() async {
    final instance = FavoriteEventsData._();
    return await instance._initHive();
  }

  Future<FavoriteEventsData> _initHive() async {
    if (Hive.isAdapterRegistered(0) != true) {
      Hive.registerAdapter(EventAdapter());
    }

    eventBox = await Hive.openBox("eventBox");
    return this;
  }

  late final Box<Event> eventBox;

  @override
  Future<Result<void>> addFavoriteEvent(Event event) async {
    try {
      final nevent = event.copyWith(isFavorite: true);
      await eventBox.put(event.id, nevent);
      return const Result.success(null);
    } on Exception catch (e) {
      debugPrint("addFavoriteEvent error: $e");
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<Event>>> getFavoriteEvents() async {
    try {
      final List<Event> list = eventBox.values.toList();
      return Result.success(list);
    } on Exception catch (e) {
      debugPrint("getFavoriteEvents error: $e");
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<void>> removeFavoriteEvent(Event event) async {
    try {
      await eventBox.delete(event.id);
      return const Result.success(null);
    } on Exception catch (e) {
      debugPrint("removeFavoriteEvent error: $e");
      return Result.error(e.toString());
    }
  }
}

typedef Instance = FutureOr Function(FavoriteEventRepository instance);
Future<void> dispose(FavoriteEventRepository instance) async {
  if (instance is FavoriteEventsData) {
    await instance.eventBox.close();
  }
}
