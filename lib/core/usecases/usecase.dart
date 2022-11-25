import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../features/meditation/domain/entities/what_brings_entity.dart';
import '../errors/failures.dart';

abstract class Usecase<Type, Params> {
  Either<Failure, List<WhatBringsEntity>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}
