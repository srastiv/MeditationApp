part of 'what_brings_bloc.dart';

abstract class WhatBringsEvent extends Equatable {
  const WhatBringsEvent();

  @override
  List<Object> get props => [];
}
 
 class FetchWhatBringsDataEvent extends WhatBringsEvent{}