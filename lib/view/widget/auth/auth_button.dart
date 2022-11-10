import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widget/text_utils.dart';
import 'package:get/get.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressd;

  const AuthButton({required this.onPressd, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressd,
      style: ElevatedButton.styleFrom(
        primary: Get.isDarkMode ? mainColor : pinkClr,
        minimumSize: const Size(360, 50),
      ),
      child: TextUtils(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          text: text,
          color: Colors.white,
          underLine: TextDecoration.none),
    );
  }
}
