part of 'weekdays_bloc.dart';

abstract class WeekdaysEvent extends Equatable {
  const WeekdaysEvent();

  @override
  List<Object> get props => [];
}

class FetchWeekdaysEvent extends WeekdaysEvent {}
