import 'package:flutter/material.dart';
import 'package:flutter_application_1/routes/routes.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:get/get.dart';

import '../widget/text_utils.dart';

class welcomeScreen extends StatelessWidget {
  const welcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child:
                Image.asset('assets/images/background.png', fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
            width: double.infinity,
            height: double.infinity,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const SizedBox(
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 230,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        text: "Asroo",
                        color: mainColor,
                        underLine: TextDecoration.none),
                    const SizedBox(
                      width: 7,
                    ),
                    TextUtils(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        text: "Shoop",
                        color: Colors.white,
                        underLine: TextDecoration.none)
                  ],
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 250,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                )),
            onPressed: () {
              Get.offNamed(Routes.logInScreen);
            },
            child: TextUtils(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                text: 'get start',
                color: Colors.white,
                underLine: TextDecoration.none),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextUtils(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  text: 'Dont have an account?',
                  color: Colors.white,
                  underLine: TextDecoration.none),
              TextButton(
                  onPressed: () {
                    Get.offNamed(Routes.SignUpScreen);
                  },
                  child: TextUtils(
                    text: 'sign up',
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    underLine: TextDecoration.underline,
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
