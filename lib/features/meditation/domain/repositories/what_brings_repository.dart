import 'package:dartz/dartz.dart';
import 'package:meditation/features/meditation/domain/entities/ocean_moon_entity.dart';
import 'package:meditation/features/meditation/domain/entities/weekdays_entity.dart';

import '../../../../core/errors/failures.dart';
import '../entities/what_brings_entity.dart';

abstract class WhatBringsRepository {
  Either<Failure, List<WhatBringsEntity>> getWhatBrings();
}

abstract class WeekdaysRepository {
  Either<Failure, List<WeekdaysEntity>> getWeekdays();
}

abstract class OceanMoonRepository {
  Either<Failure, List<OceanMoonEntity>> getOceanMoonList();
}
