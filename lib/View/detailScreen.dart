import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: Column(
            children: [
              Container(
                width: Get.width,
                height: Get.height * 0.6,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/pink.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
              ),
              SizedBox(
                height: Get.height * 0.06,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Pink Blazer",
                          style: AppConstants.kDarkStyle,
                        ),
                        Text(
                          "\$400",
                          style: AppConstants.kDarkStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Text(
                      "dugure Jacket",
                      style: AppConstants.kLightStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Text(
                      "Pink Blazer is a soft blazer. It is made of pure wool,It is good in quality",
                      style: AppConstants.kLightStyle.copyWith(
                          fontSize: Get.height * 0.017, color: Colors.grey),
                    ),
                    SizedBox(
                      height: Get.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customButton(
                            height: 0.09,
                            width: 0.54,
                            text: "Buy Now",
                            textColor: Colors.white,
                            color: Colors.pinkAccent.withOpacity(0.7)),
                        Container(
                          height: Get.height * 0.1,
                          width: Get.width * 0.18,
                          child: Center(
                              child: Icon(
                            Icons.shopping_cart,
                            color: Colors.pinkAccent,
                          )),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
