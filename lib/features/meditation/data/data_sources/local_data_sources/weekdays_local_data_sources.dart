import 'package:dartz/dartz.dart';
import 'package:meditation/core/errors/failures.dart';

import '../../../domain/entities/weekdays_entity.dart';

abstract class WeekdaysLocalDataSource {
  Either<Failure, List<WeekdaysEntity>> getWeekdays();
}

class WeekdaysLocalDataSourceImpl implements WeekdaysLocalDataSource {
  @override
  Either<Failure, List<WeekdaysEntity>> getWeekdays() {
    List<WeekdaysEntity> weekdays = [
      WeekdaysEntity(selectedOrNot: false, weekdays: "SU"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "M"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "T"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "W"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "TH"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "F"),
      WeekdaysEntity(selectedOrNot: false, weekdays: "S"),
    ];

    if (2 == 2) {
      return Right(weekdays);
    } else {
      return const Left(
        Failure(),
      );
    }
  }
}
