import 'package:auto_route/auto_route.dart';
import 'package:meditation/features/meditation/presentation/screens/courses/courses_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/meditate/meditate_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/morning/happy_morning_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/music/music_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/reminders/reminder_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/sleep/night_island_screen/night_island_screen.dart';
import 'package:meditation/features/meditation/presentation/screens/sleep/sleep_onboarding.dart';
import 'package:meditation/features/meditation/presentation/screens/sleep/stories/sleep_stories.dart';
import 'package:meditation/features/meditation/presentation/screens/welcome/auth_page.dart';
import 'package:meditation/features/meditation/presentation/screens/welcome/welcome.dart';
import 'package:meditation/features/meditation/presentation/screens/whatbrings/what_brings_screen.dart';

import '../screens/courses/widgets/bottom_nav.dart';
import '../screens/signin_signup_screen/sign_in_screen/sign_in_screen.dart';
import '../screens/signin_signup_screen/sign_up_screen/sign_up_screen.dart';
import '../screens/signin_signup_screen/signin_signup_screen.dart';
import '../screens/sleep/rubbish.dart';
import '../screens/user/user_screen.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SignInSignUpScreen, initial: true),
    MaterialRoute(page: SignUp, path: "/signup"),
    MaterialRoute(page: SignIn, path: "signin"),
    MaterialRoute(page: AuthPage, path: "/auth"),
    MaterialRoute(page: WelcomeScreen, path: "/welcome"),
    MaterialRoute(page: WhatBrings, path: "/whatbrings"),
    MaterialRoute(page: ReminderScreen),
    MaterialRoute(page: CustomBottomNavigationBarWidget),
    MaterialRoute(page: CoursesScreen),
    MaterialRoute(page: UserScreen),
    MaterialRoute(page: HappyMorningScreen),
    MaterialRoute(page: MeditateScreen),
    MaterialRoute(page: MusicScreen),
    MaterialRoute(page: SleepOnboarding),
    MaterialRoute(page: SleepStoriesScreen),
    MaterialRoute(page: NightIslandScreen),
    MaterialRoute(page: Rubbish),
  ],
  // replaceInRouteName: 'Page, Route',
)
class $AppRouter {}
