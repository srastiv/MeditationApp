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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:auto_route/empty_router_widgets.dart' as _i14;
import 'package:flutter/material.dart' as _i20;

import '../../data/models/courses_model.dart' as _i21;
import '../screens/courses/courses_screen.dart' as _i8;
import '../screens/courses/widgets/bottom_nav.dart' as _i13;
import '../screens/meditate/meditate_screen.dart' as _i15;
import '../screens/morning/happy_morning_screen.dart' as _i10;
import '../screens/music/music_screen.dart' as _i11;
import '../screens/reminders/reminder_screen.dart' as _i7;
import '../screens/signin_signup_screen/sign_in_screen/sign_in_screen.dart'
    as _i3;
import '../screens/signin_signup_screen/sign_up_screen/sign_up_screen.dart'
    as _i2;
import '../screens/signin_signup_screen/signin_signup_screen.dart' as _i1;
import '../screens/sleep/night_island_screen/night_island_screen.dart' as _i18;
import '../screens/sleep/rubbish/rubbish.dart' as _i16;
import '../screens/sleep/sleep_onboarding.dart' as _i12;
import '../screens/sleep/stories/sleep_stories.dart' as _i17;
import '../screens/user/user_screen.dart' as _i9;
import '../screens/welcome/auth_page.dart' as _i4;
import '../screens/welcome/welcome.dart' as _i5;
import '../screens/whatbrings/what_brings_screen.dart' as _i6;

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SignInSignUpScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SignInSignUpScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>(
          orElse: () => const SignUpRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SignUp(key: args.key),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignIn(key: args.key),
      );
    },
    AuthPageRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AuthPage(),
      );
    },
    WelcomeScreenRoute.name: (routeData) {
      final args = routeData.argsAs<WelcomeScreenRouteArgs>(
          orElse: () => const WelcomeScreenRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.WelcomeScreen(key: args.key),
      );
    },
    WhatBringsRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.WhatBrings(),
      );
    },
    ReminderScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.ReminderScreen(),
      );
    },
    CoursesScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CoursesScreenRouteArgs>(
          orElse: () => const CoursesScreenRouteArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.CoursesScreen(key: args.key),
      );
    },
    UserScreenRoute.name: (routeData) {
      final args = routeData.argsAs<UserScreenRouteArgs>();
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.UserScreen(
          key: args.key,
          course: args.course,
        ),
      );
    },
    HappyMorningScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.HappyMorningScreen(),
      );
    },
    MusicScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.MusicScreen(),
      );
    },
    SleepOnboardingRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.SleepOnboarding(),
      );
    },
    CustomBottomNavigationBarWidgetRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.CustomBottomNavigationBarWidget(),
      );
    },
    StoriesRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.EmptyRouterPage(),
      );
    },
    MeditateRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.MeditateScreen(),
      );
    },
    CoursesRouter.name: (routeData) {
      final args = routeData.argsAs<CoursesRouterArgs>(
          orElse: () => const CoursesRouterArgs());
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.CoursesScreen(key: args.key),
      );
    },
    MusicRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.MusicScreen(),
      );
    },
    RubbishRouter.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.Rubbish(),
      );
    },
    SleepStoriesScreenRoute.name: (routeData) {
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.SleepStoriesScreen(),
      );
    },
    NightIslandScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<NightIslandScreenRouteArgs>(
          orElse: () =>
              NightIslandScreenRouteArgs(song: pathParams.getString('song')));
      return _i19.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i18.NightIslandScreen(
          key: args.key,
          song: args.song,
        ),
      );
    },
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(
          SignInSignUpScreenRoute.name,
          path: '/',
        ),
        _i19.RouteConfig(
          SignUpRoute.name,
          path: '/signup',
        ),
        _i19.RouteConfig(
          SignInRoute.name,
          path: 'signin',
        ),
        _i19.RouteConfig(
          AuthPageRoute.name,
          path: '/auth',
        ),
        _i19.RouteConfig(
          WelcomeScreenRoute.name,
          path: '/welcome',
        ),
        _i19.RouteConfig(
          WhatBringsRoute.name,
          path: '/whatbrings',
        ),
        _i19.RouteConfig(
          ReminderScreenRoute.name,
          path: '/reminder-screen',
        ),
        _i19.RouteConfig(
          CoursesScreenRoute.name,
          path: '/courses-screen',
        ),
        _i19.RouteConfig(
          UserScreenRoute.name,
          path: '/user-screen',
        ),
        _i19.RouteConfig(
          HappyMorningScreenRoute.name,
          path: '/happy-morning-screen',
        ),
        _i19.RouteConfig(
          MusicScreenRoute.name,
          path: '/music-screen',
        ),
        _i19.RouteConfig(
          SleepOnboardingRoute.name,
          path: '/sleep-onboarding',
        ),
        _i19.RouteConfig(
          CustomBottomNavigationBarWidgetRoute.name,
          path: 'bottomNav',
          children: [
            _i19.RouteConfig(
              StoriesRouter.name,
              path: 'stories',
              parent: CustomBottomNavigationBarWidgetRoute.name,
              children: [
                _i19.RouteConfig(
                  SleepStoriesScreenRoute.name,
                  path: '',
                  parent: StoriesRouter.name,
                ),
                _i19.RouteConfig(
                  NightIslandScreenRoute.name,
                  path: ':song',
                  parent: StoriesRouter.name,
                ),
                _i19.RouteConfig(
                  RubbishRouter.name,
                  path: '',
                  parent: StoriesRouter.name,
                ),
              ],
            ),
            _i19.RouteConfig(
              MeditateRouter.name,
              path: 'meditate',
              parent: CustomBottomNavigationBarWidgetRoute.name,
            ),
            _i19.RouteConfig(
              CoursesRouter.name,
              path: 'courses',
              parent: CustomBottomNavigationBarWidgetRoute.name,
            ),
            _i19.RouteConfig(
              MusicRouter.name,
              path: 'music',
              parent: CustomBottomNavigationBarWidgetRoute.name,
            ),
            _i19.RouteConfig(
              RubbishRouter.name,
              path: '',
              parent: CustomBottomNavigationBarWidgetRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SignInSignUpScreen]
class SignInSignUpScreenRoute extends _i19.PageRouteInfo<void> {
  const SignInSignUpScreenRoute()
      : super(
          SignInSignUpScreenRoute.name,
          path: '/',
        );

  static const String name = 'SignInSignUpScreenRoute';
}

/// generated route for
/// [_i2.SignUp]
class SignUpRoute extends _i19.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i20.Key? key})
      : super(
          SignUpRoute.name,
          path: '/signup',
          args: SignUpRouteArgs(key: key),
        );

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignIn]
class SignInRoute extends _i19.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({_i20.Key? key})
      : super(
          SignInRoute.name,
          path: 'signin',
          args: SignInRouteArgs(key: key),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.AuthPage]
class AuthPageRoute extends _i19.PageRouteInfo<void> {
  const AuthPageRoute()
      : super(
          AuthPageRoute.name,
          path: '/auth',
        );

  static const String name = 'AuthPageRoute';
}

/// generated route for
/// [_i5.WelcomeScreen]
class WelcomeScreenRoute extends _i19.PageRouteInfo<WelcomeScreenRouteArgs> {
  WelcomeScreenRoute({_i20.Key? key})
      : super(
          WelcomeScreenRoute.name,
          path: '/welcome',
          args: WelcomeScreenRouteArgs(key: key),
        );

  static const String name = 'WelcomeScreenRoute';
}

class WelcomeScreenRouteArgs {
  const WelcomeScreenRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'WelcomeScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.WhatBrings]
class WhatBringsRoute extends _i19.PageRouteInfo<void> {
  const WhatBringsRoute()
      : super(
          WhatBringsRoute.name,
          path: '/whatbrings',
        );

  static const String name = 'WhatBringsRoute';
}

/// generated route for
/// [_i7.ReminderScreen]
class ReminderScreenRoute extends _i19.PageRouteInfo<void> {
  const ReminderScreenRoute()
      : super(
          ReminderScreenRoute.name,
          path: '/reminder-screen',
        );

  static const String name = 'ReminderScreenRoute';
}

/// generated route for
/// [_i8.CoursesScreen]
class CoursesScreenRoute extends _i19.PageRouteInfo<CoursesScreenRouteArgs> {
  CoursesScreenRoute({_i20.Key? key})
      : super(
          CoursesScreenRoute.name,
          path: '/courses-screen',
          args: CoursesScreenRouteArgs(key: key),
        );

  static const String name = 'CoursesScreenRoute';
}

class CoursesScreenRouteArgs {
  const CoursesScreenRouteArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'CoursesScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.UserScreen]
class UserScreenRoute extends _i19.PageRouteInfo<UserScreenRouteArgs> {
  UserScreenRoute({
    _i20.Key? key,
    required _i21.CoursesModel course,
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

  final _i20.Key? key;

  final _i21.CoursesModel course;

  @override
  String toString() {
    return 'UserScreenRouteArgs{key: $key, course: $course}';
  }
}

/// generated route for
/// [_i10.HappyMorningScreen]
class HappyMorningScreenRoute extends _i19.PageRouteInfo<void> {
  const HappyMorningScreenRoute()
      : super(
          HappyMorningScreenRoute.name,
          path: '/happy-morning-screen',
        );

  static const String name = 'HappyMorningScreenRoute';
}

/// generated route for
/// [_i11.MusicScreen]
class MusicScreenRoute extends _i19.PageRouteInfo<void> {
  const MusicScreenRoute()
      : super(
          MusicScreenRoute.name,
          path: '/music-screen',
        );

  static const String name = 'MusicScreenRoute';
}

/// generated route for
/// [_i12.SleepOnboarding]
class SleepOnboardingRoute extends _i19.PageRouteInfo<void> {
  const SleepOnboardingRoute()
      : super(
          SleepOnboardingRoute.name,
          path: '/sleep-onboarding',
        );

  static const String name = 'SleepOnboardingRoute';
}

/// generated route for
/// [_i13.CustomBottomNavigationBarWidget]
class CustomBottomNavigationBarWidgetRoute extends _i19.PageRouteInfo<void> {
  const CustomBottomNavigationBarWidgetRoute(
      {List<_i19.PageRouteInfo>? children})
      : super(
          CustomBottomNavigationBarWidgetRoute.name,
          path: 'bottomNav',
          initialChildren: children,
        );

  static const String name = 'CustomBottomNavigationBarWidgetRoute';
}

/// generated route for
/// [_i14.EmptyRouterPage]
class StoriesRouter extends _i19.PageRouteInfo<void> {
  const StoriesRouter({List<_i19.PageRouteInfo>? children})
      : super(
          StoriesRouter.name,
          path: 'stories',
          initialChildren: children,
        );

  static const String name = 'StoriesRouter';
}

/// generated route for
/// [_i15.MeditateScreen]
class MeditateRouter extends _i19.PageRouteInfo<void> {
  const MeditateRouter()
      : super(
          MeditateRouter.name,
          path: 'meditate',
        );

  static const String name = 'MeditateRouter';
}

/// generated route for
/// [_i8.CoursesScreen]
class CoursesRouter extends _i19.PageRouteInfo<CoursesRouterArgs> {
  CoursesRouter({_i20.Key? key})
      : super(
          CoursesRouter.name,
          path: 'courses',
          args: CoursesRouterArgs(key: key),
        );

  static const String name = 'CoursesRouter';
}

class CoursesRouterArgs {
  const CoursesRouterArgs({this.key});

  final _i20.Key? key;

  @override
  String toString() {
    return 'CoursesRouterArgs{key: $key}';
  }
}

/// generated route for
/// [_i11.MusicScreen]
class MusicRouter extends _i19.PageRouteInfo<void> {
  const MusicRouter()
      : super(
          MusicRouter.name,
          path: 'music',
        );

  static const String name = 'MusicRouter';
}

/// generated route for
/// [_i16.Rubbish]
class RubbishRouter extends _i19.PageRouteInfo<void> {
  const RubbishRouter()
      : super(
          RubbishRouter.name,
          path: '',
        );

  static const String name = 'RubbishRouter';
}

/// generated route for
/// [_i17.SleepStoriesScreen]
class SleepStoriesScreenRoute extends _i19.PageRouteInfo<void> {
  const SleepStoriesScreenRoute()
      : super(
          SleepStoriesScreenRoute.name,
          path: '',
        );

  static const String name = 'SleepStoriesScreenRoute';
}

/// generated route for
/// [_i18.NightIslandScreen]
class NightIslandScreenRoute
    extends _i19.PageRouteInfo<NightIslandScreenRouteArgs> {
  NightIslandScreenRoute({
    _i20.Key? key,
    required String song,
  }) : super(
          NightIslandScreenRoute.name,
          path: ':song',
          args: NightIslandScreenRouteArgs(
            key: key,
            song: song,
          ),
          rawPathParams: {'song': song},
        );

  static const String name = 'NightIslandScreenRoute';
}

class NightIslandScreenRouteArgs {
  const NightIslandScreenRouteArgs({
    this.key,
    required this.song,
  });

  final _i20.Key? key;

  final String song;

  @override
  String toString() {
    return 'NightIslandScreenRouteArgs{key: $key, song: $song}';
  }
}
