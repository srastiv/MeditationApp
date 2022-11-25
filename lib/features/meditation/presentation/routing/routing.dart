import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
import '../screens/sleep/rubbish.dart';
import '../screens/sleep/sleep_onboarding.dart';
import '../screens/sleep/stories/sleep_stories.dart';
import '../screens/user/user_screen.dart';
import '../screens/welcome/auth_page.dart';
import '../screens/welcome/welcome.dart';
import '../screens/whatbrings/what_brings_screen.dart';

class AppRoutes {
  static final GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (BuildContext context, GoRouterState state) {
          return const SignInSignUpScreen();
        },
      ),
      GoRoute(
        path: "/signin",
        builder: (BuildContext context, GoRouterState state) {
          return SignIn();
        },
      ),
      GoRoute(
        path: "/signup",
        builder: (BuildContext context, GoRouterState state) {
          return SignUp();
        },
      ),
      GoRoute(
        path: "/auth",
        builder: (BuildContext context, GoRouterState state) {
          return const AuthPage();
        },
      ),
      GoRoute(
        path: "/welcome",
        builder: (BuildContext context, GoRouterState state) {
          return WelcomeScreen();
        },
      ),
      GoRoute(
        path: "/whatbrings",
        builder: (BuildContext context, GoRouterState state) {
          return const WhatBrings();
        },
      ),
      GoRoute(
        path: "/reminders",
        builder: (BuildContext context, GoRouterState state) {
          return const ReminderScreen();
        },
      ),
      GoRoute(
        path: "/home",
        builder: (BuildContext context, GoRouterState state) {
          return CoursesScreen();
        },
      ),
      GoRoute(
        path: "/music",
        builder: (BuildContext context, GoRouterState state) {
          return const MusicScreen();
        },
      ),
      GoRoute(
        path: "/morning",
        builder: (BuildContext context, GoRouterState state) {
          return const HappyMorningScreen();
        },
      ),
      GoRoute(
        path: "/meditate",
        builder: (BuildContext context, GoRouterState state) {
          return const MeditateScreen();
        },
      ),
      GoRoute(
        path: "/sleepOnbor",
        builder: (BuildContext context, GoRouterState state) {
          return const SleepOnboarding();
        },
      ),
      GoRoute(
        path: "/user",
        builder: (BuildContext context, GoRouterState state) {
          return const UserScreen();
        },
      ),
      GoRoute(
        path: "/bottomnav",
        builder: (BuildContext context, GoRouterState state) {
          return const CustomBottomNavigationBarWidget();
        },
      ),
      GoRoute(
        path: "/stories",
        builder: (BuildContext context, GoRouterState state) {
          return const SleepStoriesScreen();
        },
      ),
      GoRoute(
        path: "/island/:song",
        builder: (BuildContext context, GoRouterState state) {
          return NightIslandScreen(song: state.extra as String);
        },
      ),
      GoRoute(
        path: "/rubbish",
        builder: (BuildContext context, GoRouterState state) {
          return const Rubbish();
        },
      ),
    ],
  );
}
