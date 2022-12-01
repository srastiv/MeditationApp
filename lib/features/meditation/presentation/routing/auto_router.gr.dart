// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../data/models/courses_model.dart' as _i20;
import '../screens/courses/courses_screen.dart' as _i9;
import '../screens/courses/widgets/bottom_nav.dart' as _i8;
import '../screens/meditate/meditate_screen.dart' as _i12;
import '../screens/morning/happy_morning_screen.dart' as _i11;
import '../screens/music/music_screen.dart' as _i13;
import '../screens/reminders/reminder_screen.dart' as _i7;
import '../screens/signin_signup_screen/sign_in_screen/sign_in_screen.dart'
    as _i3;
import '../screens/signin_signup_screen/sign_up_screen/sign_up_screen.dart'
    as _i2;
import '../screens/signin_signup_screen/signin_signup_screen.dart' as _i1;
import '../screens/sleep/night_island_screen/night_island_screen.dart' as _i16;
import '../screens/sleep/rubbish.dart' as _i17;
import '../screens/sleep/sleep_onboarding.dart' as _i14;
import '../screens/sleep/stories/sleep_stories.dart' as _i15;
import '../screens/user/user_screen.dart' as _i10;
import '../screens/welcome/auth_page.dart' as _i4;
import '../screens/welcome/welcome.dart' as _i5;
import '../screens/whatbrings/what_brings_screen.dart' as _i6;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    SignInSignUpScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInSignUpScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SignUp(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignIn(key: args.key),
      );
    },
    AuthPageRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AuthPage(),
      );
    },
    WelcomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<WelcomeScreenRouteArgs>(
          orElse: () => const WelcomeScreenRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.WelcomeScreen(key: args.key),
      );
    },
    WhatBringsRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.WhatBrings(),
      );
    },
    ReminderScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ReminderScreen(),
      );
    },
    CustomBottomNavigationBarWidgetRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.CustomBottomNavigationBarWidget(),
      );
    },
    CoursesScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CoursesScreenRouteArgs>(
          orElse: () => const CoursesScreenRouteArgs());
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.CoursesScreen(key: args.key),
      );
    },
    UserScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UserScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.UserScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    HappyMorningScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.HappyMorningScreen(),
      );
    },
    MeditateScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.MeditateScreen(),
      );
    },
    MusicScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.MusicScreen(),
      );
    },
    SleepOnboardingRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.SleepOnboarding(),
      );
    },
    SleepStoriesScreenRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.SleepStoriesScreen(),
      );
    },
    NightIslandScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NightIslandScreenRouteArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.NightIslandScreen(
          key: args.key,
          song: args.song,
        ),
      );
    },
    RubbishRoute.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.Rubbish(),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          SignInSignUpScreenRoute.name,
          path: '/',
        ),
        _i18.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i18.RouteConfig(
          SignInRoute.name,
          path: 'signin',
        ),
        _i18.RouteConfig(
          AuthPageRoute.name,
          path: '/auth',
        ),
        _i18.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome',
        ),
        _i18.RouteConfig(
          WhatBringsRoute.name,
          path: '/whatbrings',
        ),
        _i18.RouteConfig(
          ReminderScreenRoute.name,
          path: '/reminder-screen',
        ),
        _i18.RouteConfig(
          CustomBottomNavigationBarWidgetRoute.name,
          path: '/custom-bottom-navigation-bar-widget',
        ),
        _i18.RouteConfig(
          CoursesScreenRoute.name,
          path: '/courses-screen',
        ),
        _i18.RouteConfig(
          UserScreenRoute.name,
          path: '/user-screen',
        ),
        _i18.RouteConfig(
          HappyMorningScreenRoute.name,
          path: '/happy-morning-screen',
        ),
        _i18.RouteConfig(
          MeditateScreenRoute.name,
          path: '/meditate-screen',
        ),
        _i18.RouteConfig(
          MusicScreenRoute.name,
          path: '/music-screen',
        ),
        _i18.RouteConfig(
          SleepOnboardingRoute.name,
          path: '/sleep-onboarding',
        ),
        _i18.RouteConfig(
          SleepStoriesScreenRoute.name,
          path: '/sleep-stories-screen',
        ),
        _i18.RouteConfig(
          NightIslandScreenRoute.name,
          path: '/night-island-screen',
        ),
        _i18.RouteConfig(
          RubbishRoute.name,
          path: '/Rubbish',
        ),
      ];
}

/// generated route for
/// [_i1.SignInSignUpScreen]
class SignInSignUpScreenRoute extends _i18.PageRouteInfo<void> {
  const SignInSignUpScreenRoute()
      : super(
          SignInSignUpScreenRoute.name,
          path: '/',
        );

  static const String name = 'SignInSignUpScreenRoute';
}

/// generated route for
/// [_i2.SignUp]
class SignUpRoute extends _i18.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i19.Key? key})
      : super(
          SignUpRoute.name,
          path: '/signup',
          args: SignUpRouteArgs(key: key),
        );

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignIn]
class SignInRoute extends _i18.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i19.Key? key})
      : super(
          SignInRoute.name,
          path: 'signin',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AuthPage]
class AuthPageRoute extends _i18.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/auth',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeScreenRoute extends _i18.PageRouteInfo<WelcomeScreenRouteArgs> {
  WelcomeScreenRoute({_i19.Key? key})
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome',
          args: WelcomeScreenRouteArgs(key: key),
        );

  static const String name = 'WelcomeScreenRoute';
}

class WelcomeScreenRouteArgs {
  const WelcomeScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'WelcomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.WhatBrings]
class WhatBringsRoute extends _i18.PageRouteInfo<void> {
  const WhatBringsRoute()
      : super(
          WhatBringsRoute.name,
          path: '/whatbrings',
        );

  static const String name = 'WhatBringsRoute';
}

/// generated route for
/// [_i7.ReminderScreen]
class ReminderScreenRoute extends _i18.PageRouteInfo<void> {
  const ReminderScreenRoute()
      : super(
          ReminderScreenRoute.name,
          path: '/reminder-screen',
        );

  static const String name = 'ReminderScreenRoute';
}

/// generated route for
/// [_i8.CustomBottomNavigationBarWidget]
class CustomBottomNavigationBarWidgetRoute extends _i18.PageRouteInfo<void> {
  const CustomBottomNavigationBarWidgetRoute()
      : super(
          CustomBottomNavigationBarWidgetRoute.name,
          path: '/custom-bottom-navigation-bar-widget',
        );

  static const String name = 'CustomBottomNavigationBarWidgetRoute';
}

/// generated route for
/// [_i9.CoursesScreen]
class CoursesScreenRoute extends _i18.PageRouteInfo<CoursesScreenRouteArgs> {
  CoursesScreenRoute({_i19.Key? key})
      : super(
          CoursesScreenRoute.name,
          path: '/courses-screen',
          args: CoursesScreenRouteArgs(key: key),
        );

  static const String name = 'CoursesScreenRoute';
}

class CoursesScreenRouteArgs {
  const CoursesScreenRouteArgs({this.key});

  final _i19.Key? key;

  @override
  String toString() {
    return 'CoursesScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.UserScreen]
class UserScreenRoute extends _i18.PageRouteInfo<UserScreenRouteArgs> {
  UserScreenRoute({
    _i19.Key? key,
    required _i20.CoursesModel course,
  }) : super(
          UserScreenRoute.name,
          path: '/user-screen',
          args: UserScreenRouteArgs(
            key: key,
            course: course,
          ),
        );

  static const String name = 'UserScreenRoute';
}

class UserScreenRouteArgs {
  const UserScreenRouteArgs({
    this.key,
    required this.course,
  });

  final _i19.Key? key;

  final _i20.CoursesModel course;

  @override
  String toString() {
    return 'UserScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i11.HappyMorningScreen]
class HappyMorningScreenRoute extends _i18.PageRouteInfo<void> {
  const HappyMorningScreenRoute()
      : super(
          HappyMorningScreenRoute.name,
          path: '/happy-morning-screen',
        );

  static const String name = 'HappyMorningScreenRoute';
}

/// generated route for
/// [_i12.MeditateScreen]
class MeditateScreenRoute extends _i18.PageRouteInfo<void> {
  const MeditateScreenRoute()
      : super(
          MeditateScreenRoute.name,
          path: '/meditate-screen',
        );

  static const String name = 'MeditateScreenRoute';
}

/// generated route for
/// [_i13.MusicScreen]
class MusicScreenRoute extends _i18.PageRouteInfo<void> {
  const MusicScreenRoute()
      : super(
          MusicScreenRoute.name,
          path: '/music-screen',
        );

  static const String name = 'MusicScreenRoute';
}

/// generated route for
/// [_i14.SleepOnboarding]
class SleepOnboardingRoute extends _i18.PageRouteInfo<void> {
  const SleepOnboardingRoute()
      : super(
          SleepOnboardingRoute.name,
          path: '/sleep-onboarding',
        );

  static const String name = 'SleepOnboardingRoute';
}

/// generated route for
/// [_i15.SleepStoriesScreen]
class SleepStoriesScreenRoute extends _i18.PageRouteInfo<void> {
  const SleepStoriesScreenRoute()
      : super(
          SleepStoriesScreenRoute.name,
          path: '/sleep-stories-screen',
        );

  static const String name = 'SleepStoriesScreenRoute';
}

/// generated route for
/// [_i16.NightIslandScreen]
class NightIslandScreenRoute
    extends _i18.PageRouteInfo<NightIslandScreenRouteArgs> {
  NightIslandScreenRoute({
    _i19.Key? key,
    required String song,
  }) : super(
          NightIslandScreenRoute.name,
          path: '/night-island-screen',
          args: NightIslandScreenRouteArgs(
            key: key,
            song: song,
          ),
        );

  static const String name = 'NightIslandScreenRoute';
}

class NightIslandScreenRouteArgs {
  const NightIslandScreenRouteArgs({
    this.key,
    required this.song,
  });

  final _i19.Key? key;

  final String song;

  @override
  String toString() {
    return 'NightIslandScreenRouteArgs{key: $key, song: $song}';
  }
}

/// generated route for
/// [_i17.Rubbish]
class RubbishRoute extends _i18.PageRouteInfo<void> {
  const RubbishRoute()
      : super(
          RubbishRoute.name,
          path: '/Rubbish',
        );

  static const String name = 'RubbishRoute';
}
