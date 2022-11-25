import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WhatBringsEntity extends Equatable {
  final Text text;
  final SvgPicture image;
  final Color color;
  const WhatBringsEntity({
    required this.image,
    required this.text,
    required this.color,
  });

  @override
  List<Object?> get props => [
        image,
        text,
        color,
      ];
}
