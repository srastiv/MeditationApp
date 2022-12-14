import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

import '../../features/meditation/data/data_sources/local_data_sources/oceanmoon_local_data_sources.dart';
import '../../features/meditation/data/data_sources/local_data_sources/weekdays_local_data_sources.dart';
import '../../features/meditation/data/data_sources/remote_data_sources/courses_remote_data_source.dart';
import '../../features/meditation/data/data_sources/remote_data_sources/what_brings_remote_data_source.dart';
import '../../features/meditation/data/repositories_impl/courses_repository_impl.dart';
import '../../features/meditation/data/repositories_impl/meditation_repository_impl.dart';
import '../../features/meditation/data/repositories_impl/what_brings_you_repository_impl.dart';
import '../../features/meditation/domain/repositories/courses_repository.dart';
import '../../features/meditation/domain/repositories/what_brings_repository.dart';
import '../../features/meditation/domain/repositories/what_brings_you_repository.dart';
import '../../features/meditation/domain/usecases/courses_usecase.dart';
import '../../features/meditation/domain/usecases/what_brings_usecase.dart';
import '../../features/meditation/domain/usecases/what_brings_you_usecase.dart';
import '../../features/meditation/presentation/screens/courses/bloc/courses_bloc.dart';
import '../../features/meditation/presentation/screens/reminders/bloc/weekdays_bloc.dart';
import '../../features/meditation/presentation/screens/sleep/stories/bloc/stories_bloc.dart';
import '../../features/meditation/presentation/screens/whatbrings/what_brings_you_bloc/what_brings_you_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  //* Features - Meditation
  // whatBrings bloc

  sl.registerFactory(() => WhatBringsYouBloc(getWhatBringsYouUsecase: sl()));

  // weekdays bloc
  sl.registerFactory(() => WeekdaysBloc(getWeekdaysUsecase: sl()));

  // ocean_moon_stories bloc
  sl.registerFactory(() => StoriesBloc(getOceanMoonUsecase: sl()));

  // courses_bloc
  sl.registerFactory(() => CoursesBloc(getCoursesUsecase: sl()));

  //usecase
  sl.registerLazySingleton(() => GetWhatBringsYouUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetWeekdaysUsecase(repository: sl()));
  sl.registerLazySingleton(
      () => GetOceanMoonUsecase(oceanMoonRepository: sl()));
  sl.registerLazySingleton(() => GetCoursesUsecase(repository: sl()));

  // repository
  sl.registerLazySingleton<WhatBringsYouRepository>(
      () => WhatBringsYouRepositoryImpl(whatBringsYouRemoteDataSource: sl()));

  sl.registerLazySingleton<WeekdaysRepository>(
      () => WeekdaysRepositoryImpl(localDataSource: sl()));
  sl.registerLazySingleton<OceanMoonRepository>(
      () => OceanMoonRepositoryImpl(localDataSource: sl()));
  sl.registerLazySingleton<CoursesRepository>(
      () => CoursesRepositoryImpl(remoteDataSource: sl()));

  //data sources
  sl.registerLazySingleton<WhatBringsYouRemoteDataSource>(
      () => WhatBringsYouRemoteDataSourceImpl());

  sl.registerLazySingleton<WeekdaysLocalDataSource>(
      () => WeekdaysLocalDataSourceImpl());
  sl.registerLazySingleton<OceanMoonLocalDataSource>(
      () => OceanMoonLocalDataSourceImpl());
  sl.registerLazySingleton<CoursesRemoteDataSource>(
      () => CoursesRemoteDataSourceImpl());

  sl.registerLazySingleton<http.Client>(() => http.Client());
}
