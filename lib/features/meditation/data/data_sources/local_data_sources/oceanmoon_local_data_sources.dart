import 'package:dartz/dartz.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/features/meditation/domain/entities/ocean_moon_entity.dart';

import '../../../../../core/errors/failures.dart';

abstract class OceanMoonLocalDataSource {
  Either<Failure, List<OceanMoonEntity>> getOceanMoonList();
}

class OceanMoonLocalDataSourceImpl extends OceanMoonLocalDataSource {
  @override
  Either<Failure, List<OceanMoonEntity>> getOceanMoonList() {
    List<OceanMoonEntity> OceanMoonEntityList = [
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/nightIsland.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Night Island"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/sweet_sleep.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Sweet Sleep"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/goodnight.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Good Night"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/moonClouds.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Moon Clouds"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/nightIsland.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Night Island"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/sweet_sleep.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Sweet Sleep"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/goodnight.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Good Night"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/moonClouds.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Moon Clouds"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/sweet_sleep.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Sweet Sleep"),
      OceanMoonEntity(
          picture: SvgPicture.asset("assets/vectors/goodnight.svg"),
          subtitle: "45 MIN • SLEEP MUSIC",
          title: "Good Night"),
    ];

    if (2 == 2) {
      return Right(OceanMoonEntityList);
    } else {
      return const Left(Failure());
    }
  }
}
