part of 'what_brings_you_bloc.dart';

abstract class WhatBringsYouEvent extends Equatable {
  const WhatBringsYouEvent();

  @override
  List<Object> get props => [];
}

 class FetchWhatBringsYouDataEvent extends WhatBringsYouEvent{}