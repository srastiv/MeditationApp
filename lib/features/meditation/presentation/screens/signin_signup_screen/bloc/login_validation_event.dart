part of 'login_validation_bloc.dart';

abstract class LoginValidationEvent extends Equatable {
  const LoginValidationEvent();

  @override
  List<Object> get props => [];
}

class LoginCredentialsChangedEvent extends LoginValidationEvent {
  final String email;
  final String password;
 // final bool isTickedOrNot;

  const LoginCredentialsChangedEvent({
    required this.email,
    required this.password,
    // required this.isTickedOrNot,
  });
}

// class CheckBoxTickEvent extends LoginValidationEvent {
//   final bool isTickedOrNot;
//   const CheckBoxTickEvent({required this.isTickedOrNot});
// }
