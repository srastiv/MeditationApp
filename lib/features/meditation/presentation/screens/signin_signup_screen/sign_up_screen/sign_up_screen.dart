// ignore_for_file: avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common_widgets/elevated_button_widget.dart';
import '../../../common_widgets/icon_button_widget.dart';
import '../../../common_widgets/text_form_field.dart';
import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../../../constants/textstyle.dart';
import '../../../routing/auto_router.gr.dart';
import '../auth/bloc/google_sign_in_bloc.dart';
import '../bloc/login_validation_bloc.dart';
import 'widgets/check_box.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GoogleSignInBloc, GoogleSignInState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kPureWhite,
          extendBody: true,
          body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.dark,
            child: BlocBuilder<LoginValidationBloc, LoginValidationState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/background_elements/signinBG.svg",
                          ),
                          const Positioned(top: 133, child: kCreateYourAccount),
                          Positioned(
                            top: 204,
                            child: LoginElevatedButtonWidget(
                              text: kContinueWithFaceBook,
                              color: kFaceBookPurple,
                              icon: SvgPicture.asset("assets/icons/fb.svg"),
                              onpressed: () {},
                            ),
                          ),
                          Positioned(
                            top: 287,
                            child: LoginElevatedButtonWidget(
                              text: kContinueWithGoogle,
                              color: kPureWhite,
                              icon: SvgPicture.asset("assets/icons/google.svg"),
                              onpressed: () async {
                                print(
                                    "continue with google button pressed on sign up page");
                                BlocProvider.of<GoogleSignInBloc>(context)
                                    .add(GoogleLogInEvent());
                                // await MeditationGoogleAuthService()
                                //     .logInWithGoogle();
                                AutoRouter.of(context).push(const AuthPageRoute());
                              },
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 20,
                            child: CommonIconButtonWidget(
                              color: kTransparent,
                              icon: const Icon(
                                Icons.arrow_back,
                                color: kBlack,
                              ),
                              onpressed: () {
                                AutoRouter.of(context).pop();
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                kOrLogInWithEmail,
                                ElevatedButton(
                                  onPressed: () {
                                    //* context.push(
                                    //*     "/otp/${phoneNoController.text}",
                                    //*     extra: phoneNoController.text);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: kPurple, elevation: 0),
                                  child: const Text("Send OTP"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 40),
                            CommonTextFormFieldWidget(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              obscuretext: false,
                              text: "Phone Number",
                              controller: phoneNoController,
                              suffixicon: (phoneNoController.text.isEmpty)
                                  ? const SizedBox()
                                  : SizedBox(
                                      height: 9.15,
                                      width: 14.13,
                                      child: SvgPicture.asset(
                                        "assets/icons/checkSIGNIN.svg",
                                      ),
                                    ),
                            ),
                            CommonTextFormFieldWidget(
                              obscuretext: false,
                              text: "Email Address",
                              controller: emailController,
                              suffixicon: (state is LoginValidState)
                                  ? SizedBox(
                                      height: 9.15,
                                      width: 14.13,
                                      child: SvgPicture.asset(
                                        "assets/icons/checkSIGNIN.svg",
                                      ),
                                    )
                                  : const SizedBox(),
                              onchanged: (value) {
                                BlocProvider.of<LoginValidationBloc>(context)
                                    .add(
                                  LoginCredentialsChangedEvent(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                              },
                            ),
                            BlocBuilder<LoginValidationBloc,
                                LoginValidationState>(
                              builder: (context, state) {
                                if (state is LoginErrorState) {
                                  return Text(
                                    state.emailErrorMessage,
                                    style: kErrorStyle,
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                            CommonTextFormFieldWidget(
                              obscuretext: true,
                              text: "Password",
                              controller: passwordController,
                              suffixicon: SvgPicture.asset(
                                "assets/icons/eyeSIGNIN.svg",
                              ),
                              onchanged: (value) {
                                BlocProvider.of<LoginValidationBloc>(context)
                                    .add(
                                  LoginCredentialsChangedEvent(
                                    password: passwordController.text,
                                    email: emailController.text,
                                  ),
                                );
                              },
                            ),
                            BlocBuilder<LoginValidationBloc,
                                LoginValidationState>(
                              builder: (context, state) {
                                if (state is LoginErrorState) {
                                  return Text(
                                    state.passwordErrorMessage,
                                    style: kErrorStyle,
                                  );
                                }
                                return const SizedBox();
                              },
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                kPrivacyPolicyRichText,
                                const CustomCheckBoxWidget(),
                                // BlocBuilder<LoginValidationBloc,
                                //     LoginValidationState>(
                                //   builder: (context, state) {
                                //     return Checkbox(
                                //       value: false,
                                //       onChanged: (val) {
                                //         BlocProvider.of<LoginValidationBloc>(
                                //                 context)
                                //             .add(
                                //           LoginOnTextChangedEvent(
                                //             email: emailController.text,
                                //             password: passwordController.text,
                                //             isTickedOrNot: val!,
                                //           ),
                                //         );
                                //       },
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                            BlocBuilder<LoginValidationBloc,
                                LoginValidationState>(
                              builder: (context, state) {
                                if (state is LoginErrorState) {
                                  return const  Text(""
                                      // state.checkboxErrorMessage,
                                      // style: kErrorStyle,
                                      );
                                }
                                return const SizedBox();
                              },
                            ),
                            const SizedBox(height: 32),
                          ],
                        ),
                      ),
                      CommonElevatedButtonWidget(
                        text: kGetStarted,
                        color: (state is LoginValidState) ? kPurple : kTextGrey,
                        onpressed: () {
                          (state is! LoginValidState)
                              ? null
                              : AutoRouter.of(context)
                                  .push(WelcomeScreenRoute());
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
