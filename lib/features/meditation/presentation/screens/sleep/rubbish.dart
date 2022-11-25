import 'package:flutter/material.dart';

class Rubbish extends StatelessWidget {
  const Rubbish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("nothing here"),
        ),
      ),
    );
  }
}
