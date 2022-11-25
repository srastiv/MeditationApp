import 'package:equatable/equatable.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';

class OceanMoonEntity extends Equatable {
  SvgPicture picture;
  String title;
  String subtitle;
  OceanMoonEntity(
      {required this.picture, required this.subtitle, required this.title});
  @override
  // TODO: implement props
  List<Object?> get props => [
        picture,
        subtitle,
        title,
      ];
}
