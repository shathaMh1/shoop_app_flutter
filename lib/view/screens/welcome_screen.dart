import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/thems.dart';

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
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    TextUtils(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      text: "Shoop",
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ]),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
            onPressed: () {},
            child: Text('get start'),
          )
        ],
      ),
    ));
  }
}
