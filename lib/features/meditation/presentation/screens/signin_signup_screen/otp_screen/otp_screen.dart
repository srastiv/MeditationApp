// ignore_for_file: use_build_context_synchronously, avoid_print

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meditation/features/meditation/presentation/constants/textstyle.dart';
import 'package:pinput/pinput.dart';

import '../../../constants/colors.dart';
import '../../../constants/texts.dart';

class OTPScreen extends StatefulWidget {
  final String phoneNo;
  const OTPScreen({
    Key? key,
    required this.phoneNo,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final FocusNode focusNode = FocusNode();
  final TextEditingController pinController = TextEditingController();

  String _verificationCode = "";
  Future<void> _phoneAuthentication(String phoneNo) async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "+91$phoneNo",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) async {
          if (value.user != null) {
            print("user logged -in!");
            context.push("/welcome");
          }
        });
      },
      codeSent: (verificationID, resendToken) {
        setState(() {
          _verificationCode = verificationID;
        });
      },
      codeAutoRetrievalTimeout: (verificationID) {
        setState(() {
          _verificationCode = verificationID;
        });
      },
      timeout: const Duration(seconds: 60),
      verificationFailed: (FirebaseAuthException error) {
        print("the error is: ${error.message}");
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _phoneAuthentication(widget.phoneNo);
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kDarkNightGrey,
        title: Text("Verify : ${widget.phoneNo}"),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                context.push("/signup");
              },
              icon: const Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVerificationCode,
            kHasBeenSent,
            const SizedBox(height: 10),
            Text(
              widget.phoneNo,
              style: kw700size16colBlack,
            ),
            const SizedBox(height: 30),
            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              controller: pinController,
              focusNode: focusNode,
              // validator: (s) {
              //   return s == _verificationCode ? null : 'Pin is incorrect';
              // },
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              onCompleted: (pin) => print("OTP Pin $pin"),
              onSubmitted: (pin) async {
                _verificationCode = pin;
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {
                    context.push("/welcome");
                    if (value.user != null) {
                      print("pass to home");
                      context.push("/welcome");
                    }
                  });
                } catch (error) {
                  FocusScope.of(context).unfocus();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text("Invalid OTP")));
                  // _scaffoldKey.currentState!.showSnackBar(
                  //   SnackBar(
                  //     content: Text("Invalid OTP"),
                  //   ),
                  // );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: const TextStyle(
      fontSize: 20, color: kDarkNightGrey, fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(
      color:const  Color.fromARGB(255, 117, 118, 119),
    ),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: kPurple),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: const Color.fromRGBO(234, 239, 243, 1),
  ),
);
