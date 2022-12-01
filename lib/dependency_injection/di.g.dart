// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'di.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configure() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => WhatBringsYouBloc(
          getWhatBringsYouUsecase: c<GetWhatBringsYouUsecase>()))
      ..registerFactory(
          (c) => WeekdaysBloc(getWeekdaysUsecase: c<GetWeekdaysUsecase>()))
      ..registerFactory(
          (c) => StoriesBloc(getOceanMoonUsecase: c<GetOceanMoonUsecase>()))
      ..registerFactory(
          (c) => CoursesBloc(getCoursesUsecase: c<GetCoursesUsecase>()))
      ..registerFactory((c) =>
          GetWhatBringsYouUsecase(repository: c<WhatBringsYouRepository>()))
      ..registerFactory(
          (c) => GetWeekdaysUsecase(repository: c<WeekdaysRepository>()))
      ..registerFactory((c) =>
          GetOceanMoonUsecase(oceanMoonRepository: c<OceanMoonRepository>()))
      ..registerFactory(
          (c) => GetCoursesUsecase(repository: c<CoursesRepository>()))
      ..registerFactory<WhatBringsYouRepository>((c) =>
          WhatBringsYouRepositoryImpl(
              whatBringsYouRemoteDataSource:
                  c<WhatBringsYouRemoteDataSource>()))
      ..registerFactory<WeekdaysRepository>((c) =>
          WeekdaysRepositoryImpl(localDataSource: c<WeekdaysLocalDataSource>()))
      ..registerFactory<OceanMoonRepository>((c) => OceanMoonRepositoryImpl(
          localDataSource: c<OceanMoonLocalDataSource>()))
      ..registerFactory<CoursesRepository>((c) =>
          CoursesRepositoryImpl(remoteDataSource: c<CoursesRemoteDataSource>()))
      ..registerFactory<WhatBringsYouRemoteDataSource>(
          (c) => WhatBringsYouRemoteDataSourceImpl())
      ..registerFactory<WeekdaysLocalDataSource>(
          (c) => WeekdaysLocalDataSourceImpl())
      ..registerFactory<OceanMoonLocalDataSource>(
          (c) => OceanMoonLocalDataSourceImpl())
      ..registerFactory<CoursesRemoteDataSource>(
          (c) => CoursesRemoteDataSourceImpl());
  }
}
