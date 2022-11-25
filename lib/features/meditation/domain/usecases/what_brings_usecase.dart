import 'package:dartz/dartz.dart';
import 'package:meditation/core/errors/failures.dart';
import 'package:meditation/features/meditation/domain/entities/ocean_moon_entity.dart';
import 'package:meditation/features/meditation/domain/entities/weekdays_entity.dart';
import 'package:meditation/features/meditation/domain/entities/what_brings_entity.dart';

import '../repositories/what_brings_repository.dart';

class GetWhatBringsUsecase {
  final WhatBringsRepository repository;
  GetWhatBringsUsecase({required this.repository});

  Either<Failure, List<WhatBringsEntity>> getWhatBrings() {
    return repository.getWhatBrings();
  }
}

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
