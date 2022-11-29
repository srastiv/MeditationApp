import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/courses_model.dart';
import '../repositories/courses_repository.dart';

class GetCoursesUsecase {
  final CoursesRepository repository;
  GetCoursesUsecase({required this.repository});

  Future<Either<Failure, List<CoursesModel>>> getCourses() async {
    return await repository.getCourses();
  }
}
