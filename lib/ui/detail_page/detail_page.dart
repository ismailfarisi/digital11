import 'package:cached_network_image/cached_network_image.dart';
import 'package:digital11/models/event.dart';
import 'package:digital11/ui/detail_page/cubit/detail_page_cubit.dart';
import 'package:digital11/utils/datetime_extension.dart';
import 'package:digital11/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/injector.dart';

class DetailPage extends StatefulWidget {
  static const routeName = 'detail-page';
  const DetailPage({Key? key, required this.eventId, this.event})
      : super(key: key);
  final int eventId;
  final Event? event;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  DetailPageCubit? _detailPageCubit;

  @override
  void initState() {
    initBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (_detailPageCubit != null)
        ? BlocProvider(
            create: (context) =>
                _detailPageCubit!..getEvent(widget.eventId, widget.event),
            child: DetailPageLayout(
              eventId: widget.eventId,
            ),
          )
        : const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }

  void initBloc() async {
    final detailPageCubit = await getIt.getAsync<DetailPageCubit>();
    setState(() {
      _detailPageCubit = detailPageCubit;
    });
  }
}

class DetailPageLayout extends StatelessWidget {
  const DetailPageLayout({Key? key, required this.eventId}) : super(key: key);
  final int eventId;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailPageCubit, DetailPageState>(
      builder: (context, state) {
        if (state.event == null && state.getEventStatus == Status.loading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state.event == null && state.getEventStatus == Status.error) {
          return Scaffold(
            body: Center(
              child: Column(
                children: [
                  const Text('Error'),
                  ElevatedButton(
                    child: const Text('Retry'),
                    onPressed: () {
                      context.read<DetailPageCubit>().getEvent(
                            eventId,
                          );
                    },
                  ),
                ],
              ),
            ),
          );
        }
        return Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.grey,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(state.event!.title),
              actions: [
                IconButton(
                  icon: state.event!.isFavorite
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                  onPressed: () {
                    if (!state.event!.isFavorite) {
                      context
                          .read<DetailPageCubit>()
                          .addToFavorite(state.event!);
                    } else {
                      context
                          .read<DetailPageCubit>()
                          .removeFromFavorite(state.event!);
                    }
                  },
                )
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  (state.event?.imageUrl == "")
                      ? Container(
                          color: Colors.blue[900],
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.7,
                        )
                      : CachedNetworkImage(
                          imageUrl: state.event!.imageUrl,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width * 0.7,
                        ),
                  const SizedBox(height: 16),
                  Text(
                    state.event!.title,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    state.event!.datetime.dateTimeString,
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
