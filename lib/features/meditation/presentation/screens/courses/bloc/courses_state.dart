part of 'courses_bloc.dart';

abstract class CoursesState extends Equatable {
  const CoursesState();

  @override
  List<Object> get props => [];
}

class CoursesInitialState extends CoursesState {}

class CoursesLoadedState extends CoursesState {
 final List<CoursesEntity> coursesList;
  const CoursesLoadedState({required this.coursesList});
}

class CoursesErrorState extends CoursesState {
  final String message;
  const CoursesErrorState({required this.message});
}
