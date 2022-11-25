import 'package:dartz/dartz.dart';
import 'package:meditation/core/errors/failures.dart';
import 'package:meditation/features/meditation/domain/entities/courses_entity.dart';
import 'package:meditation/features/meditation/domain/repositories/courses_repository.dart';

class GetCoursesUsecase {
  final CoursesRepository repository;
  GetCoursesUsecase({required this.repository});

  Future<Either<Failure, List<CoursesEntity>>> getCourses() async {
    return await repository.getCourses();
  }
}
