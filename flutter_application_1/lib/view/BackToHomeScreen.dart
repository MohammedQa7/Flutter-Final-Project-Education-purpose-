import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/core/viewmodel/home_view_model.dart';
import 'package:flutter_application_1/view/homescreen.dart';
import 'package:flutter_application_1/view/widget/customText.dart';
import 'package:get/get.dart';

class BackToHome extends StatelessWidget {
  const BackToHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) => Scaffold(
        body: Container(
          padding: EdgeInsets.all(50),
          child: Container(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Get.to(HomeScreen());
                },
                child: customText(
                  text:
                      "All Done , we will contact you when the package is ready to be deliverd :) . YOU CAN CLICK ME TO GET BACK TO SHOPPING",
                  alignment: Alignment.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
