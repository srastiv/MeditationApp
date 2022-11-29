import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/ocean_moon_entity.dart';
import '../entities/weekdays_entity.dart';

abstract class WeekdaysRepository {
  Either<Failure, List<WeekdaysEntity>> getWeekdays();
}

abstract class OceanMoonRepository {
  Either<Failure, List<OceanMoonEntity>> getOceanMoonList();
}
