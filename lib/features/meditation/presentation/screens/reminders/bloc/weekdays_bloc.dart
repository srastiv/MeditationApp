import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/weekdays_entity.dart';
import '../../../../domain/usecases/what_brings_usecase.dart';

part 'weekdays_event.dart';
part 'weekdays_state.dart';

class WeekdaysBloc extends Bloc<WeekdaysEvent, WeekdaysState> {
  GetWeekdaysUsecase getWeekdaysUsecase;

  WeekdaysBloc({required this.getWeekdaysUsecase})
      : super(WeekdaysInitialState()) {
    on<FetchWeekdaysEvent>((event, emit) {
      final weekdays = getWeekdaysUsecase.getWeekdays();

      weekdays.fold(
          (failure) => const Left(WeekdaysErrorState(
              errorMessage: "ERROR message from weekdays bloc")),
          (weekdays) => emit(WeekdaysLoadedState(weekdays: weekdays)));
    });
  }
}
