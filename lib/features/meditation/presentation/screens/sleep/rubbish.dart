import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:meditation/features/meditation/presentation/constants/colors.dart';

class Rubbish extends StatefulWidget {
  const Rubbish({Key? key}) : super(key: key);

  @override
  State<Rubbish> createState() => _RubbishState();
  showToast() {
    Fluttertoast.showToast(
      msg: "msg",
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER_LEFT,
      backgroundColor: kGreen,
    );
  }
}

class _RubbishState extends State<Rubbish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rubbish"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Fluttertoast.showToast(
            msg: "TOAST MESSAGE",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER_LEFT,
            backgroundColor: kGreen,
          ),
          child: Wrap(
            children: const [
              Text("nothing here djshdshdhjhbsjds hdbsd hsbdsfss"),
            ],
          ),
        ),
      ),
    );
  }
}
