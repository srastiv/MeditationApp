import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/ocean_moon_entity.dart';
import '../../domain/entities/weekdays_entity.dart';
import '../../domain/repositories/what_brings_repository.dart';
import '../data_sources/local_data_sources/oceanmoon_local_data_sources.dart';
import '../data_sources/local_data_sources/weekdays_local_data_sources.dart';



class WeekdaysRepositoryImpl implements WeekdaysRepository {
  final WeekdaysLocalDataSource localDataSource;
  WeekdaysRepositoryImpl({required this.localDataSource});

  @override
  Either<Failure, List<WeekdaysEntity>> getWeekdays() {
    try {
      final getWeekdays = localDataSource.getWeekdays();
      return getWeekdays.fold((l) => Left(l), (r) => Right(r));
    } on LocalDataExceptions {
      return Left(ServerFailure());
    }
  }
}

class OceanMoonRepositoryImpl implements OceanMoonRepository {
  final OceanMoonLocalDataSource localDataSource;
  OceanMoonRepositoryImpl({required this.localDataSource});
  @override
  Either<Failure, List<OceanMoonEntity>> getOceanMoonList() {
    try {
      final getOceanMoonList = localDataSource.getOceanMoonList();
      return getOceanMoonList.fold((l) => Left(l), (r) => Right(r));
    } on LocalDataExceptions {
      return Left(ServerFailure());
    }
  }
}
