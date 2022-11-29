// import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/courses_model.dart';

abstract class CoursesRemoteDataSource {
  Future<Either<Failure, List<CoursesModel>>> getCourses();
}

class CoursesRemoteDataSourceImpl implements CoursesRemoteDataSource {

  @override
  Future<Either<Failure, List<CoursesModel>>> getCourses() async {
    if (2 == 2) {
      var coursesResponse =
          await FirebaseFirestore.instance.collection("COURSES").get();

      var response = coursesResponse.docs
          .map((snapshot) => CoursesModel.fromJson(snapshot.data()))
          .toList();

          
      //print(response);
      //*  var response = coursesResponse.docs;
      //* .map((e) => CoursesModel.fromJson(e)).toList();


      return Right(response);
    } else {
      return const Left(Failure());
    }
  }
}

      /// BELOW CODE'S TYPE IS [STREAM]
      //! var res =
      //!    FirebaseFirestore.instance.collection("COURSES").snapshots().map(
      //!           (event) => event.docs
      //!               .map(
      //!                 (e) => CoursesModel.fromJson(e.data()),
      //!               )
      //!               .toList(),
      //!         );
      //! print(res);