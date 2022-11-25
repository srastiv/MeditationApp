import 'package:dartz/dartz.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/core/errors/failures.dart';

import '../../../domain/entities/what_brings_entity.dart';
import '../../../presentation/constants/colors.dart';
import '../../../presentation/constants/texts.dart';

abstract class WhatBringsLocalDataSource {
  Either<Failure, List<WhatBringsEntity>> getWhatBrings();
}

class WhatBringsLocalDataSourceImpl implements WhatBringsLocalDataSource {
  @override
  Either<Failure, List<WhatBringsEntity>> getWhatBrings() {
    List<WhatBringsEntity> whatBringsYouToSilentMoonList = [
      WhatBringsEntity(
        text: kReduceStressReason,
        image: SvgPicture.asset("assets/vectors/reduceStress.svg"),
        color: kPurple,
      ),
      WhatBringsEntity(
        text: kImprovePerformanceReason,
        image: SvgPicture.asset("assets/vectors/improvePerformance.svg"),
        color: kOrange,
      ),
      WhatBringsEntity(
        text: kIncreaseHappinessReason,
        image: SvgPicture.asset("assets/vectors/increaseHappiness.svg"),
        color: kLightOrange,
      ),
      WhatBringsEntity(
        text: kReduceAnxietyReason,
        image: SvgPicture.asset("assets/vectors/reduceAnxiety.svg"),
        color: kYellow,
      ),
      WhatBringsEntity(
        text: kPersonalGrowthReason,
        image: SvgPicture.asset("assets/vectors/personalGrowth.svg"),
        color: kPastelGreen,
      ),
      WhatBringsEntity(
        text: kBetterSleepReason,
        image: SvgPicture.asset("assets/vectors/betterSleep.svg"),
        color: kDarkGrey,
      ),
      WhatBringsEntity(
        text: kImprovePerformanceReason,
        image: SvgPicture.asset("assets/vectors/girloncouch.svg"),
        color: kBlue,
      ),
      WhatBringsEntity(
        text: kBetterFocusReason,
        image: SvgPicture.asset("assets/vectors/betterFocus.svg"),
        color: kPink,
      ),
    ];
    if (2 == 2) {
      return Right(whatBringsYouToSilentMoonList);
    } else {
      return const Left(
        Failure(),
      );
    }
  }
}
