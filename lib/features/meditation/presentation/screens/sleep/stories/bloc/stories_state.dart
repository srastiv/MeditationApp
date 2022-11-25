part of 'stories_bloc.dart';

abstract class StoriesState extends Equatable {
  const StoriesState();

  @override
  List<Object> get props => [];
}

class StoriesInitialState extends StoriesState {}

class StoriesLoadedState extends StoriesState {
  final List<OceanMoonEntity> oceanMoonStories;
  const StoriesLoadedState({required this.oceanMoonStories});
}

class StoriesErrorState extends StoriesState {
  final String errorMessage;
  const StoriesErrorState({required this.errorMessage});
}
