import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:meditation/features/meditation/presentation/screens/sleep/rubbish/rubbish.dart';

import '../screens/courses/courses_screen.dart';
import '../screens/courses/widgets/bottom_nav.dart';
import '../screens/meditate/meditate_screen.dart';
import '../screens/morning/happy_morning_screen.dart';
import '../screens/music/music_screen.dart';
import '../screens/reminders/reminder_screen.dart';
import '../screens/signin_signup_screen/sign_in_screen/sign_in_screen.dart';
import '../screens/signin_signup_screen/sign_up_screen/sign_up_screen.dart';
import '../screens/signin_signup_screen/signin_signup_screen.dart';
import '../screens/sleep/night_island_screen/night_island_screen.dart';

import '../screens/sleep/sleep_onboarding.dart';
import '../screens/sleep/stories/sleep_stories.dart';
import '../screens/user/user_screen.dart';
import '../screens/welcome/auth_page.dart';
import '../screens/welcome/welcome.dart';
import '../screens/whatbrings/what_brings_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SignInSignUpScreen, initial: true),
    MaterialRoute(page: SignUp, path: "/signup"),
    MaterialRoute(page: SignIn, path: "signin"),
    MaterialRoute(page: AuthPage, path: "/auth"),
    MaterialRoute(page: WelcomeScreen, path: "/welcome"),
    MaterialRoute(page: WhatBrings, path: "/whatbrings"),
    MaterialRoute(page: ReminderScreen),
    MaterialRoute(page: CoursesScreen),
    MaterialRoute(page: UserScreen),
    MaterialRoute(page: HappyMorningScreen),
    //MaterialRoute(page: MeditateScreen),
    MaterialRoute(page: MusicScreen),
    MaterialRoute(page: SleepOnboarding),
    MaterialRoute(
      page: CustomBottomNavigationBarWidget,
      path: "bottomNav",
      children: [
        AutoRoute(
          path: "stories",
          name: "StoriesRouter",
          page: EmptyRouterPage,
          maintainState: true,
          children: [
            AutoRoute(
              path: "",
              page: SleepStoriesScreen,
            ),
            AutoRoute(
              path: ":song",
              page: NightIslandScreen,
            ),
            AutoRoute(
              path: "",
               name: "RubbishRouter",
              page: Rubbish,
            ),
            
          ],
        ),
        // //* 2nd autorouter
        AutoRoute(
          path: "meditate",
          name: "MeditateRouter",
          page: MeditateScreen,
        ),
         AutoRoute(
          path: "courses",
          name: "CoursesRouter",
          page: CoursesScreen,
        ),
         AutoRoute(
          path: "music",
          name: "MusicRouter",
          page: MusicScreen,
        ),
         AutoRoute(
           path: "",
        name: "RubbishRouter",
          page: Rubbish,
        ),
      ],
    ),
    
  ],
  // replaceInRouteName: 'Page, Route',
)
class $AppRouter {}
