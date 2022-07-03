import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

import '../models/event.dart';
import '../ui/detail_page/detail_page.dart';
import '../ui/home_page/home_page.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();

@singleton
class AppRouter {
  GoRouter router() =>
      GoRouter(routes: [_homeroute], observers: [routeObserver]);

  static final _homeroute = GoRoute(
      name: HomePage.routeName,
      path: '/',
      builder: (context, sate) => const HomePage(),
      routes: [_detailRoute]);
  static final _detailRoute = GoRoute(
    name: DetailPage.routeName,
    path: 'event/:id',
    builder: (context, state) {
      final eventId = int.tryParse(state.params['id'] ?? '0') ?? 0;
      final event = state.extra as Event?;
      return DetailPage(
        eventId: eventId,
        event: event,
      );
    },
  );
}
