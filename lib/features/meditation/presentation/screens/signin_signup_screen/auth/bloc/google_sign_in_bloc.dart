import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../google_sign_in.dart';

part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc() : super(GoogleSignInInitial()) {
    on<GoogleLogInEvent>((event, emit) async {
      var loginResult = await MeditationGoogleAuthService().logInWithGoogle();

      // GoogleSignIn googleSignIn = GoogleSignIn();
      // GoogleSignInAccount? _user;
      // GoogleSignInAccount get user => _user!;
      //final googlelogin = MeditationGoogleSignIn().googleLogIn();

      // Future googleLogIn() async {
      //   try {
      //     final googleUser = await googleSignIn.signIn();

      //     if (googleUser == null) {
      //       print("NO GOOGLE USER");
      //       return null;
      //     }
      //     _user = googleUser;

      //     final googleAuth = await googleUser.authentication;
      //     final credential = GoogleAuthProvider.credential(
      //       accessToken: googleAuth.accessToken,
      //       idToken: googleAuth.idToken,
      //     );
      //     await FirebaseAuth.instance.signInWithCredential(credential);
      //   } catch (e) {
      //     print("THERE IS AN ERROR IN LOGIN: ${e.toString()}");
      //   }
      // }

      // print("GOOGLE SIGN IN: ${googleSignIn}");
      emit(GoogleLoggedInState());
    });

    on<GoogleLogOutEvent>((event, emit) {
      Future googleLogOut() async {
        final googleSignIn = GoogleSignIn();
        await googleSignIn.disconnect();
        FirebaseAuth.instance.signOut();
      }
    });
  }
}
