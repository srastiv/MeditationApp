import 'package:flutter/material.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

class CommonElevatedButtonWidget extends StatelessWidget {
  const CommonElevatedButtonWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.onpressed,
  }) : super(key: key);

  final Text text;
  final Color color;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 63,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(38)),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            text,
          ],
        ),
      ),
    );
  }
}

class LoginElevatedButtonWidget extends StatelessWidget {
  const LoginElevatedButtonWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    required this.onpressed,
  }) : super(key: key);

  final Text text;
  final Color color;
  final Widget icon;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .90,
      height: 63,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: BorderRadius.circular(38),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
        ),
        onPressed: onpressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            text,
          ],
        ),
      ),
    );
  }
}
