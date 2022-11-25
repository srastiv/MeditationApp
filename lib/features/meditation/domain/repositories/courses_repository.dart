import 'package:dartz/dartz.dart';
import 'package:meditation/core/errors/failures.dart';
import 'package:meditation/features/meditation/domain/entities/courses_entity.dart';

abstract class CoursesRepository{
  Future<Either<Failure, List<CoursesEntity>>> getCourses();
}