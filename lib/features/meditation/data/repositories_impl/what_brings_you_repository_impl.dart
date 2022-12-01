import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/repositories/what_brings_you_repository.dart';
import '../data_sources/remote_data_sources/what_brings_remote_data_source.dart';
import '../models/what_brings_you_model.dart';

class WhatBringsYouRepositoryImpl implements WhatBringsYouRepository {
  final WhatBringsYouRemoteDataSource whatBringsYouRemoteDataSource;
  WhatBringsYouRepositoryImpl({required this.whatBringsYouRemoteDataSource});

  @override
  Future<Either<Failure, List<WhatBringsYouModel>>> getWhatBringsYou() async {
    try {
      final getWhatBringsYou =
          await whatBringsYouRemoteDataSource.getWhatBringsYou();

      return getWhatBringsYou.fold((l) => Left(l), (r) => Right(r));
    } on ServerExceptions {
      return Left(ServerFailure());
    }
  }
}
