import 'package:flutter/material.dart';

class logInScreen extends StatelessWidget {
  const logInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Text(
        "loginScreen",
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
