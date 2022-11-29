// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_validation_event.dart';
part 'login_validation_state.dart';

class LoginValidationBloc
    extends Bloc<LoginValidationEvent, LoginValidationState> {
  LoginValidationBloc() : super(LoginValidationInitial()) {
    on<LoginCredentialsChangedEvent>((event, emit) {
      String emailErrorMessage = "Please enter a valid email address";
      String passwordErrorMessage = "Please enter a valid password";
      var emailValidation =
          (isEmail(event.email) == false || event.email.isEmpty);
      var passwordValidation =
          (validatePassword(event.password) == false || event.password.isEmpty);

      if (passwordValidation) {
        emit(LoginErrorState(
          passwordErrorMessage: passwordErrorMessage,
          emailErrorMessage: emailValidation ? emailErrorMessage : "",
        // checkboxErrorMessage: "",
        ));
        if (event.password.length < 8) {
          emit(LoginErrorState(
            passwordErrorMessage:
                "Password should be atleast 8 characters long",
            emailErrorMessage: emailValidation ? emailErrorMessage : "",
           // checkboxErrorMessage: "",
          ));
        }
        if (!event.password.contains(RegExp(r'[A-Z]'))) {
          emit(LoginErrorState(
            passwordErrorMessage: "Password should contain atleast 1 uppercase",
            emailErrorMessage: emailValidation ? emailErrorMessage : "",
            //checkboxErrorMessage: "",
          ));
        }
        if (!event.password.contains(RegExp(r'[a-z]'))) {
          emit(LoginErrorState(
            passwordErrorMessage: "Password should contain atleast 1 lowercase",
            emailErrorMessage: emailValidation ? emailErrorMessage : "",
           // checkboxErrorMessage: "",
          ));
        }
        if (!event.password.contains(RegExp(r'[0-9]'))) {
          emit(LoginErrorState(
            passwordErrorMessage: "Password should contain atleast 1 digit",
            emailErrorMessage: emailValidation ? emailErrorMessage : "",
           // checkboxErrorMessage: "",
          ));
        }
        if (!event.password.contains(RegExp(r'[!@#\$&*~]'))) {
          emit(LoginErrorState(
            passwordErrorMessage:
                "Password should contain atleast 1 special character",
            emailErrorMessage: emailValidation ? emailErrorMessage : "",
           // checkboxErrorMessage: "",
          ));
        }
      } else if (emailValidation) {
        emit(LoginErrorState(
          emailErrorMessage: emailErrorMessage,
          passwordErrorMessage: passwordValidation ? passwordErrorMessage : "",
          //checkboxErrorMessage: "",
        ));
      } else {
        emit(LoginValidState());
      }
    });
  }
}

bool isEmail(String em) {
  String p =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = RegExp(p);

  return regExp.hasMatch(em);
}

bool validatePassword(String value) {
  String pattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  RegExp regExp = RegExp(pattern);
  return regExp.hasMatch(value);
}
