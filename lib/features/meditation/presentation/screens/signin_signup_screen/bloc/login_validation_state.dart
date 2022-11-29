part of 'login_validation_bloc.dart';

abstract class LoginValidationState extends Equatable {
  const LoginValidationState();

  @override
  List<Object> get props => [];
}

class LoginValidationInitial extends LoginValidationState {}

class LoginValidState extends LoginValidationState {
  // final bool isTickedOrNot;
  // LoginValidState({required this.isTickedOrNot});
}

class LoginErrorState extends LoginValidationState {
  final String emailErrorMessage;
  final String passwordErrorMessage;
 // final String checkboxErrorMessage;
  const LoginErrorState({
    required this.emailErrorMessage,
    required this.passwordErrorMessage,
  //  required this.checkboxErrorMessage,
  });
}
