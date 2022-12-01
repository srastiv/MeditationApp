// ignore: depend_on_referenced_packages
import "package:kiwi/kiwi.dart";

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

part 'di.g.dart';

abstract class Injector {
  static KiwiContainer? _container;

  static void setUp() {
    _container = KiwiContainer();
    _$Injector()._configure();
  }

  static get resolve => _container!.resolve();

  @Register.factory(WhatBringsYouBloc)
  @Register.factory(WeekdaysBloc)
  @Register.factory(StoriesBloc)
  @Register.factory(CoursesBloc)
  @Register.factory(GetWhatBringsYouUsecase)
  @Register.factory(GetWeekdaysUsecase)
  @Register.factory(GetOceanMoonUsecase)
  @Register.factory(GetCoursesUsecase)
  @Register.factory(WhatBringsYouRepository, from: WhatBringsYouRepositoryImpl)
  @Register.factory(WeekdaysRepository, from: WeekdaysRepositoryImpl)
  @Register.factory(OceanMoonRepository, from: OceanMoonRepositoryImpl)
  @Register.factory(CoursesRepository, from: CoursesRepositoryImpl)
  @Register.factory(WhatBringsYouRemoteDataSource,
      from: WhatBringsYouRemoteDataSourceImpl)
  @Register.factory(WeekdaysLocalDataSource, from: WeekdaysLocalDataSourceImpl)
  @Register.factory(OceanMoonLocalDataSource,
      from: OceanMoonLocalDataSourceImpl)
  @Register.factory(CoursesRemoteDataSource, from: CoursesRemoteDataSourceImpl)
  void _configure();
}
