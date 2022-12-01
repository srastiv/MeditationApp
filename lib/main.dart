import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:kiwi/kiwi.dart' as kiwi;

import 'dependency_injection/di.dart';
import 'features/meditation/presentation/constants/colors.dart';
import 'features/meditation/presentation/routing/auto_router.gr.dart';
import 'features/meditation/presentation/screens/courses/bloc/courses_bloc.dart';
import 'features/meditation/presentation/screens/reminders/bloc/weekdays_bloc.dart';
import 'features/meditation/presentation/screens/signin_signup_screen/auth/bloc/google_sign_in_bloc.dart';
import 'features/meditation/presentation/screens/signin_signup_screen/bloc/login_validation_bloc.dart';
import 'features/meditation/presentation/screens/sleep/stories/bloc/stories_bloc.dart';
import 'features/meditation/presentation/screens/whatbrings/what_brings_you_bloc/what_brings_you_bloc.dart';
import 'features/meditation/presentation/themes/custom_dark_theme.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Injector.setUp();
  //await di.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appRouter = AppRouter();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginValidationBloc>(
          create: (context) => LoginValidationBloc(),
        ),
        BlocProvider<GoogleSignInBloc>(
          create: (context) => GoogleSignInBloc(),
        ),
        BlocProvider<WhatBringsYouBloc>(
          create: (context) =>
              kiwi.KiwiContainer().resolve<WhatBringsYouBloc>(),
        ),
        BlocProvider<WeekdaysBloc>(
          create: (context) => kiwi.KiwiContainer().resolve<WeekdaysBloc>(),
        ),
        BlocProvider<StoriesBloc>(
          create: (context) => kiwi.KiwiContainer().resolve<StoriesBloc>(),
        ),
        BlocProvider<CoursesBloc>(
          create: (context) => kiwi.KiwiContainer().resolve<CoursesBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        themeMode: ThemeMode.system,
        darkTheme: CustomDarkTheme.darkTheme,
        theme: ThemeData(
          fontFamily: "Helvetica",
          checkboxTheme: CheckboxThemeData(
            checkColor: MaterialStateProperty.all(kNightWhite),
            fillColor: MaterialStateProperty.all(kPurple),
          ),
        ),
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
      ),
    );
  }
}
