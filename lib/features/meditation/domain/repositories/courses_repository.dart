import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/courses_model.dart';

abstract class CoursesRepository{
  Future<Either<Failure, List<CoursesModel>>> getCourses();
}