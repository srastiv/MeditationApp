import 'package:equatable/equatable.dart';
import 'package:flutter_svg/svg.dart';

class OceanMoonEntity extends Equatable {
  final SvgPicture picture;
  final String title;
  final String subtitle;
  const OceanMoonEntity(
      {required this.picture, required this.subtitle, required this.title});
  @override
  List<Object?> get props => [
        picture,
        subtitle,
        title,
      ];
}
