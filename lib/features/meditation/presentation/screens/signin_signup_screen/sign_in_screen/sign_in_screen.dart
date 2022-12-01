import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common_widgets/elevated_button_widget.dart';
import '../../../common_widgets/icon_button_widget.dart';
import '../../../common_widgets/text_form_field.dart';
import '../../../constants/colors.dart';
import '../../../constants/texts.dart';
import '../../../routing/auto_router.gr.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPureWhite,
      extendBody: true,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(
                  "assets/background_elements/signinBG.svg",
                ),
                const Positioned(top: 133, child: kWelcomeBack),
                Positioned(
                  top: 204,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: LoginElevatedButtonWidget(
                      text: kContinueWithFaceBook,
                      color: kFaceBookPurple,
                      icon: SvgPicture.asset("assets/icons/fb.svg"),
                      onpressed: () {
                        // context.go("/signup");
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 287,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: LoginElevatedButtonWidget(
                        text: kContinueWithGoogle,
                        color: kPureWhite,
                        icon: SvgPicture.asset("assets/icons/google.svg"),
                        onpressed: () {}),
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  kOrLogInWithEmail,
                  const SizedBox(height: 40),
                  CommonTextFormFieldWidget(
                    obscuretext: false,
                    text: "Email Address",
                    controller: emailController,
                  ),
                  CommonTextFormFieldWidget(
                    obscuretext: true,
                    text: "Password",
                    controller: passwordController,
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            CommonElevatedButtonWidget(
              text: kLogInButtonText,
              color: kPurple,
              onpressed: () {
                AutoRouter.of(context).push(WelcomeScreenRoute());
              },
            ),
            const SizedBox(height: 20),
            kForgotPassword,
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            kSignUpRichText,
          ],
        ),
      ),
    );
  }
}
