import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ocean_moon_entity.dart';
import '../entities/weekdays_entity.dart';
import '../repositories/what_brings_repository.dart';



class GetWeekdaysUsecase {
  final WeekdaysRepository repository;
  GetWeekdaysUsecase({required this.repository});

  Either<Failure, List<WeekdaysEntity>> getWeekdays() {
    return repository.getWeekdays();
  }
}

class GetOceanMoonUsecase {
  final OceanMoonRepository oceanMoonRepository;
  GetOceanMoonUsecase({required this.oceanMoonRepository});

  Either<Failure, List<OceanMoonEntity>> getOceanMoonList() {
    return oceanMoonRepository.getOceanMoonList();
  }
}
