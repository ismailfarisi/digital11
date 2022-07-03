// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/repository/event_repository.dart' as _i7;
import '../data/repository/favorite_event_repository.dart' as _i4;
import '../data/source/local_storage/favorite_events_data.dart' as _i5;
import '../data/source/rest_api/event_data.dart' as _i8;
import '../ui/detail_page/cubit/detail_page_cubit.dart' as _i10;
import '../ui/home_page/bloc/home_page_bloc.dart' as _i9;
import 'dio.module.dart' as _i11;
import 'router.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingletonAsync<_i4.FavoriteEventRepository>(
      () => _i5.FavoriteEventsData.init(),
      dispose: _i5.dispose);
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i6.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.factory<_i7.EventRepository>(() => _i8.EventData(get<_i6.Dio>()));
  gh.factoryAsync<_i9.HomePageBloc>(() async => _i9.HomePageBloc(
      await get.getAsync<_i4.FavoriteEventRepository>(),
      get<_i7.EventRepository>()));
  gh.factoryAsync<_i10.DetailPageCubit>(() async => _i10.DetailPageCubit(
      get<_i7.EventRepository>(),
      await get.getAsync<_i4.FavoriteEventRepository>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
