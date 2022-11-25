part of 'login_validation_bloc.dart';

abstract class LoginValidationEvent extends Equatable {
  const LoginValidationEvent();

  @override
  List<Object> get props => [];
}

class LoginOnTextChangedEvent extends LoginValidationEvent {
  final String email;
  final String password;
   bool isTickedOrNot;
   LoginOnTextChangedEvent({
    required this.email,
    required this.password,
   required this.isTickedOrNot
  });
}

class CheckBoxTickEvent extends LoginValidationEvent {
   bool isTickedOrNot;
   CheckBoxTickEvent({required this.isTickedOrNot});
}
