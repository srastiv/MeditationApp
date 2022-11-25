import 'package:dartz/dartz.dart';
import 'package:meditation/core/errors/failures.dart';
import 'package:meditation/features/meditation/domain/entities/courses_entity.dart';
// import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../models/courses_model.dart';

abstract class CoursesRemoteDataSource {
  Future<Either<Failure, List<CoursesEntity>>> getCourses();
}

class CoursesRemoteDataSourceImpl implements CoursesRemoteDataSource {
  // final http.Client client;
  // CoursesRemoteDataSourceImpl({required this.client});

  @override
  Future<Either<Failure, List<CoursesEntity>>> getCourses() async {
    if (2 == 2) {
      var coursesResponse =
          await FirebaseFirestore.instance.collection("COURSES").get();
     var response = coursesResponse.docs.map((snapshot) => CoursesModel.fromJson(snapshot.data())).toList();

      //var response = coursesResponse.docs;
      // .map((e) => CoursesModel.fromJson(e)).toList();

      return Right([]);
    } else {
      return const Left(Failure());
    }
  }
}
