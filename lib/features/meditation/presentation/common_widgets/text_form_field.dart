import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

import '../constants/textstyle.dart';

class CommonTextFormFieldWidget extends StatelessWidget {
  final int? numberOfLetters;
  final Widget? suffixicon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String text;

  final bool obscuretext;
  final TextEditingController controller;
  final void Function(String)? onchanged;

  const CommonTextFormFieldWidget({
    Key? key,
    required this.text,
    this.onchanged,
    this.inputFormatters,
    this.keyboardType,
    required this.controller,
    this.suffixicon,
    required this.obscuretext,
    this.numberOfLetters,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      child: TextFormField(
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        controller: controller,
        onChanged: onchanged,
        obscureText: obscuretext,
        maxLength: numberOfLetters,
        decoration: InputDecoration(
          isDense: true,
          border: InputBorder.none,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: kGrey),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(color: kGrey)),
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: kGrey,
          hintText: text,
          hintStyle: kw300size16colTextGrey,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(15.0),
            child: suffixicon,
          ),
        ),
      ),
    );
  }
}
