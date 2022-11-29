import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/login_validation_bloc.dart';

class CustomCheckBoxWidget extends StatefulWidget {
  const CustomCheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CustomCheckBoxWidget> createState() => _CustomCheckBoxWidgetState();
}

bool? isChecked = false;

class _CustomCheckBoxWidgetState extends State<CustomCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginValidationBloc, LoginValidationState>(
      builder: (context, state) {
        return Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          value: isChecked,
          onChanged: (val) {
            // BlocProvider.of<LoginValidationBloc>(context)
            //     .add(LoginCredentialsChangedEvent(isTickedOrNot: val!));
            setState(
              () {
                isChecked = val;
              },
            );
          },
        );
      },
    );
  }
}
