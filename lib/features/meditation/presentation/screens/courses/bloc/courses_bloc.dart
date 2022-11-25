import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/entities/courses_entity.dart';
import '../../../../domain/usecases/courses_usecase.dart';

part 'courses_event.dart';
part 'courses_state.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final GetCoursesUsecase getCoursesUsecase;
  CoursesBloc({required this.getCoursesUsecase}) : super(CoursesInitialState()) {
    on<FetchCoursesEvent>(
      (event, emit) async {
        final coursesList = await getCoursesUsecase.getCourses();

        coursesList.fold(
          (faiure) => emit(
            const CoursesErrorState(message: "Error detected from BLOC"),
          ),
          (coursesList) => emit(
            CoursesLoadedState(coursesList: coursesList),
          ),
        );
      },
    );
  }
}
