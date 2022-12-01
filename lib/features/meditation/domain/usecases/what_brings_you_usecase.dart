import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/what_brings_you_model.dart';
import '../repositories/what_brings_you_repository.dart';

class GetWhatBringsYouUsecase {
  final WhatBringsYouRepository repository;
  GetWhatBringsYouUsecase({required this.repository});

  Future<Either<Failure, List<WhatBringsYouModel>>> getWhatBringsYou() async {
    return await repository.getWhatBringsYou();
  }
}
