import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/errors/failures.dart';
import '../../models/what_brings_you_model.dart';

abstract class WhatBringsYouRemoteDataSource {
  Future<Either<Failure, List<WhatBringsYouModel>>> getWhatBringsYou();
}

class WhatBringsYouRemoteDataSourceImpl
    implements WhatBringsYouRemoteDataSource {
  @override
  Future<Either<Failure, List<WhatBringsYouModel>>> getWhatBringsYou() async {
    if (2 == 2) {
      final response =
          await FirebaseFirestore.instance.collection("WhatBrings").get();

      var result = response.docs
          .map((snapshot) => WhatBringsYouModel.fromJson(snapshot.data()))
          .toList();

      return Right(result);
    } else {
      return const Left(Failure());
    }
  }
}
