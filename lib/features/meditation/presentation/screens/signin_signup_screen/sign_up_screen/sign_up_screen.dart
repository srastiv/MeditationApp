import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../common_widgets/elevated_button_widget.dart';
import '../../../common_widgets/icon_button_widget.dart';
import '../../../common_widgets/text_form_field.dart';
import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../../../constants/textstyle.dart';
import '../auth/bloc/google_sign_in_bloc.dart';
import '../bloc/login_validation_bloc.dart';
import 'widgets/check_box.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
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

                                context.go("/auth");
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
                                context.go("/");
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
                            kOrLogInWithEmail,
                            const SizedBox(height: 40),
                            CommonTextFormFieldWidget(
                              obscuretext: false,
                              text: "Username",
                              controller: usernameController,
                              suffixicon: (usernameController.text.isEmpty)
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
                                  LoginOnTextChangedEvent(
                                      email: emailController.text,
                                      password: passwordController.text,
                                      isTickedOrNot: false),
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
                                  LoginOnTextChangedEvent(
                                      password: passwordController.text,
                                      email: emailController.text,
                                      isTickedOrNot: false),
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

                                // BlocBuilder<LoginValidationBloc,
                                //     LoginValidationState>(
                                //   builder: (context, state) {
                                //     if (state is LoginErrorState) {
                                //       return Text(
                                //         state.checkboxErrorMessage,
                                //         style: kErrorStyle,
                                //       );
                                //     }
                                //     return const SizedBox();
                                //   },
                                // ),
                              ],
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
                              : context.go("/welcome");
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
