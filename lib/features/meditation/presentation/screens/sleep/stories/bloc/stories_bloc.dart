// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../../domain/entities/ocean_moon_entity.dart';
import '../../../../../domain/usecases/what_brings_usecase.dart';

part 'stories_event.dart';
part 'stories_state.dart';

class StoriesBloc extends Bloc<StoriesEvent, StoriesState> {
  GetOceanMoonUsecase getOceanMoonUsecase;

  StoriesBloc({required this.getOceanMoonUsecase})
      : super(StoriesInitialState()) {
    on<FetchStoriesEvent>(
      (event, emit) {
        final stories = getOceanMoonUsecase.getOceanMoonList();

        stories.fold(
          (failure) => emit(
            const StoriesErrorState(
                errorMessage: "ERROR msg from Ocean Moon Stories bloc"),
          ),
          (oceanMoonStories) => emit(
            StoriesLoadedState(oceanMoonStories: oceanMoonStories),
          ),
        );
      },
    );
  }
}
