import 'package:equatable/equatable.dart';

class WhatBringsYou extends Equatable {
  final String whatBringsTitle;
  final String whatBringsBGColor;
  final String whatBringsSVGpath;

  const WhatBringsYou({
    required this.whatBringsBGColor,
    required this.whatBringsSVGpath,
    required this.whatBringsTitle,
  });

  @override
  List<Object?> get props => [
        whatBringsBGColor,
        whatBringsTitle,
        whatBringsSVGpath,
      ];
}
