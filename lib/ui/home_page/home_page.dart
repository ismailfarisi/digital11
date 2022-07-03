import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital11/core/injector.dart';
import 'package:digital11/core/router.dart';
import 'package:digital11/models/event.dart';
import 'package:digital11/ui/detail_page/detail_page.dart';
import 'package:digital11/ui/home_page/bloc/home_page_bloc.dart';
import 'package:digital11/utils/datetime_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../data/repository/favorite_event_repository.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageBloc? _homePageBloc;

  @override
  void initState() {
    initBloc();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return (_homePageBloc != null)
        ? BlocProvider(
            create: (context) => _homePageBloc!,
            child: const HomePageLayout(),
          )
        : const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  void initBloc() async {
    final homePageBloc = await getIt.getAsync<HomePageBloc>();
    setState(() {
      _homePageBloc = homePageBloc;
    });
  }
}

class HomePageLayout extends StatefulWidget {
  const HomePageLayout({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageLayout> createState() => _HomePageLayoutState();
}

class _HomePageLayoutState extends State<HomePageLayout> with RouteAware {
  @override
  void didChangeDependencies() {
    routeObserver.subscribe(this, ModalRoute.of(context)!);
    super.didChangeDependencies();
  }

  @override
  void initState() {
    context.read<HomePageBloc>().add(const HomePageEvent.loadFavoriteEvents());

    super.initState();
  }

  @override
  void didPopNext() {
    debugPrint('didPopNext');
    context.read<HomePageBloc>().add(const HomePageEvent.loadFavoriteEvents());
    super.didPopNext();
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).focusedChild?.unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Column(
              children: [
                const SearchTextField(),
                const SizedBox(height: 16),
                Expanded(
                  child: BlocBuilder<HomePageBloc, HomePageState>(
                    builder: (context, state) {
                      final length = state.isSearching
                          ? state.searchResults.length
                          : state.favoriteEvents.length;
                      final events = state.isSearching
                          ? state.searchResults
                          : state.favoriteEvents;
                      return ListView.builder(
                        itemCount: length,
                        itemBuilder: (context, index) {
                          final event = events[index];
                          return EventListItem(event: event);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class EventListItem extends StatelessWidget {
  const EventListItem({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed(DetailPage.routeName,
            params: {"id": event.id.toString()}, extra: event);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
                width: 80,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    (event.imageUrl != "")
                        ? CachedNetworkImage(
                            imageUrl: event.imageUrl,
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: Colors.blue,
                            width: 64,
                            height: 64,
                          ),
                    if (event.isFavorite)
                      const Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Text(
                      event.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      event.location,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      event.datetime.dateTimeString,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchTextField extends StatefulWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_focusListener);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      onChanged: ((value) {
        BlocProvider.of<HomePageBloc>(context).add(
          HomePageEvent.onSearch(value),
        );
      }),
      decoration: InputDecoration(
        constraints: const BoxConstraints(maxHeight: 56),
        suffix: SizedBox(
          width: 64,
          child: Center(
            child: TextButton(
                onPressed: () {
                  _controller.clear();
                  _focusNode.unfocus();
                },
                child: const Text('cancel')),
          ),
        ),
        border: const OutlineInputBorder(),
        labelText: 'Search',
      ),
    );
  }

  void _focusListener() {
    if (_focusNode.hasFocus) {
      context.read<HomePageBloc>().add(const HomePageEvent.isSearching(true));
    } else {
      context.read<HomePageBloc>().add(const HomePageEvent.isSearching(false));
    }
  }
}
