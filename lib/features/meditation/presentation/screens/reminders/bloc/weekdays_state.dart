part of 'weekdays_bloc.dart';

abstract class WeekdaysState extends Equatable {
  const WeekdaysState();

  @override
  List<Object> get props => [];
}

class WeekdaysInitialState extends WeekdaysState {}

class WeekdaysLoadedState extends WeekdaysState {
  final List<WeekdaysEntity> weekdays;
  const WeekdaysLoadedState({required this.weekdays});
}

class WeekdaysErrorState extends WeekdaysState {
  final String errorMessage;
  const WeekdaysErrorState({required this.errorMessage});
}
