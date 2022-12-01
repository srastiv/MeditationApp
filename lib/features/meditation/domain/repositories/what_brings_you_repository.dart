
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../../data/models/what_brings_you_model.dart';

abstract class WhatBringsYouRepository {
  Future<Either<Failure, List<WhatBringsYouModel>>> getWhatBringsYou();
}
