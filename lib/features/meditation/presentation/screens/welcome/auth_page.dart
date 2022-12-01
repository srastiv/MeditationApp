import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meditation/features/meditation/presentation/routing/auto_router.gr.dart';

import '../../constants/colors.dart';
import '../signin_signup_screen/auth/google_sign_in.dart';
import '../signin_signup_screen/sign_up_screen/sign_up_screen.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("snapshot has error"),
          );
        } else if (snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("WELCOME ${user!.displayName}"),
                  TextButton(
                    onPressed: () {
                      MeditationGoogleAuthService().logOutOfGoogle();
                      AutoRouter.of(context).push(SignUpRoute());
                    },
                    child: const Text(
                      "LOG OUT",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      AutoRouter.of(context).push(WelcomeScreenRoute());
                    },
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(
                        color: kGreen,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return SignUp();
        }
      }),
    );
  }
}
