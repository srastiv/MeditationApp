import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MeditationGoogleAuthService {
  final googleSignIn = GoogleSignIn(
    scopes: <String>["email"]
  );
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;

  Future logInWithGoogle() async {
    try {

      //trigger authentication flow
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        return;
      }
      _user = googleUser;

      // obtain auth details from the request
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
        print("sign-in successful");
      
      // once signed-in, return the user credential
      return await FirebaseAuth.instance.signInWithCredential(credential);
    
    } catch (e) {
      print("THERE IS AN ERROR IN LOGIN: ${e.toString()}");
    }

  }

  Future logOutOfGoogle() async {
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
