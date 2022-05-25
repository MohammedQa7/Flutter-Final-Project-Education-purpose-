import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/constance.dart';
import 'package:flutter_application_1/core/viewmodel/cart_view_model.dart';
import 'package:flutter_application_1/model/cart_product_model.dart';
import 'package:flutter_application_1/view/BackToHomeScreen.dart';
import 'package:flutter_application_1/view/widget/customText.dart';
import 'package:get/get.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        body: GetBuilder<CartViewModel>(
          builder: (controller) => Column(
            children: [
              SizedBox(
                height: 65,
              ),
              customText(
                text: "CheckOut",
                fontSize: 22,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 60,
              ),
              Expanded(
                child: Container(
                  height: 250,
                  padding: EdgeInsets.all(20),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      child: Container(
                        width: 150,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                height: 200,
                                child: Image.network(
                                    controller.cartProductModel[index].image),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              RichText(
                                maxLines: 1,
                                text: TextSpan(
                                    style: TextStyle(color: Colors.black),
                                    text: controller
                                        .cartProductModel[index].name),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              customText(
                                text: controller.cartProductModel[index].price,
                                color: PrimaryColor,
                              ),
                            ]),
                      ),
                    ),
                    itemCount: controller.cartProductModel.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 80,
                padding: EdgeInsets.only(bottom: 20),
                child: FlatButton(
                    onPressed: () {
                      Get.to(BackToHome());
                    },
                    color: PrimaryColor,
                    child: customText(
                      text: "Deliver ",
                      color: Colors.white,
                      alignment: Alignment.center,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
