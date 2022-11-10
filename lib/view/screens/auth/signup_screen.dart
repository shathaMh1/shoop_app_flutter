import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';
import 'package:flutter_application_1/view/widget/text_utils.dart';
import 'package:get/get.dart';

import '../../widget/auth/Auth_Text_From_Field.dart';
import '../../widget/auth/Container_Under.dart';
import '../../widget/auth/auth_button.dart';
import '../../widget/auth/check_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // final bool obscurText,
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
          elevation: 0,
        ),
        backgroundColor: Get.isDarkMode ? Colors.white : darkGreyClr,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 1.3,
                child: Padding(
                  padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                  child: Column(children: [
                    Row(
                      children: [
                        TextUtils(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            text: "SIGN",
                            color: Get.isDarkMode ? mainColor : pinkClr,
                            underLine: TextDecoration.none),
                        const SizedBox(
                          width: 3,
                        ),
                        TextUtils(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            text: "UP",
                            color: Get.isDarkMode ? Colors.black : Colors.white,
                            underLine: TextDecoration.none),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthTextFromField(
                      controller: nameController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/user.png')
                          : Icon(
                              Icons.person,
                              color: pinkClr,
                              size: 30,
                            ),
                      suffixIcon: const Text(""),
                      hintText: 'User Name',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextFromField(
                      controller: emailController,
                      obscureText: false,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/email.png')
                          : Icon(Icons.email, color: pinkClr, size: 30),
                      suffixIcon: const Text(""),
                      hintText: 'Email',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthTextFromField(
                      controller: passwordController,
                      obscureText: true,
                      validator: () {},
                      prefixIcon: Get.isDarkMode
                          ? Image.asset('assets/images/lock.png')
                          : Icon(Icons.email, color: pinkClr, size: 30),
                      suffixIcon: const Text(""),
                      hintText: 'Password',
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const CheckWidget(),
                    const SizedBox(
                      height: 50,
                    ),
                    AuthButton(
                      onPressd: () {},
                      text: "SIGN UP",
                    ),
                  ]),
                ),
              ),
              ContainerUnder(
                text: "Already have an Account? Log In ",
                textType: "Log In",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
