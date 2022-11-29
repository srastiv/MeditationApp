import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'dependency_injection.dart' as di;
import 'features/meditation/presentation/constants/colors.dart';
import 'features/meditation/presentation/routing/routing.dart';
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
  await di.init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          create: (context) => GetIt.instance<WhatBringsYouBloc>(),
        ),
       
        BlocProvider<WeekdaysBloc>(
          create: (context) => GetIt.instance<WeekdaysBloc>(),
        ),
        BlocProvider<StoriesBloc>(
          create: (context) => GetIt.instance<StoriesBloc>(),
        ),
        BlocProvider<CoursesBloc>(
          create: (context) => GetIt.instance<CoursesBloc>(),
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
        routerDelegate: AppRoutes.routes.routerDelegate,
        routeInformationParser: AppRoutes.routes.routeInformationParser,
        routeInformationProvider: AppRoutes.routes.routeInformationProvider,
      ),
    );
  }
}
