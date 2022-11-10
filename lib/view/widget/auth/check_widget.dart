import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widget/text_utils.dart';
import 'package:get/get.dart';

class CheckWidget extends StatelessWidget {
  const CheckWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Get.isDarkMode
                ? Image.asset("assets/images/check.png")
                : Icon(Icons.done, color: pinkClr, size: 30),
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Row(
          children: [
            TextUtils(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                text: "I accept ",
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.none),
            TextUtils(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                text: "terms & condition",
                color: Get.isDarkMode ? Colors.black : Colors.white,
                underLine: TextDecoration.underline),
          ],
        )
      ],
    );
  }
}
