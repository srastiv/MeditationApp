import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/courses_repository.dart';
import '../data_sources/remote_data_sources/courses_remote_data_source.dart';
import '../models/courses_model.dart';



class CoursesRepositoryImpl implements CoursesRepository {
  final CoursesRemoteDataSource remoteDataSource;
  CoursesRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<CoursesModel>>> getCourses() async {
    try {
      final getCourses = await remoteDataSource.getCourses();
      return getCourses.fold((l) => Left(l), (r) => Right(r));
    } on ServerExceptions {
      return Left(
        ServerFailure(),
      );
    }
  }
}
