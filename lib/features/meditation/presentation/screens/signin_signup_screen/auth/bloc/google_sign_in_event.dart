part of 'google_sign_in_bloc.dart';

abstract class GoogleSignInEvent {}

class GoogleLogInEvent extends GoogleSignInEvent{}

class GoogleLogOutEvent extends GoogleSignInEvent{}