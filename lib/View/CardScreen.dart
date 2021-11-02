import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/DATA/AppData.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.96),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              customAppBar(
                iconHeight: 0.1,
                iconWidth: 0.14,
                icon: Icons.widgets,
                iconColor: Colors.pinkAccent,
                iconBackground: Colors.white,
                text1: "",
                text2: "Card",
                image: "assets/images/image7.jpg",
                radius: 25,
              ),
              Container(
                height: Get.height * 0.58,
                child: ListView.builder(
                    itemCount: cardList.length,
                    itemBuilder: (cxt, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 6, horizontal: 9),
                          height: Get.height * 0.12,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.only(right: Get.width * 0.03),
                                width: Get.width * 0.2,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          cardList[index].image,
                                        ),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(16)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    cardList[index].itemName,
                                    style: AppConstants.kDarkStyle
                                        .copyWith(fontSize: 12),
                                  ),
                                  Text(
                                    cardList[index].genderStyle,
                                    style: AppConstants.kLightStyle
                                        .copyWith(fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.024,
                                  ),
                                  Text(
                                    cardList[index].itemPrice,
                                    style: AppConstants.kDarkStyle,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 7),
                                    child: Container(
                                      height: Get.height * 0.034,
                                      width: Get.width * 0.08,
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.white,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.pinkAccent
                                              .withOpacity(0.6),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            setState(() {
                                              counter++;
                                            });
                                          },
                                          child: Icon(Icons.add)),
                                      Text(counter.toString()),
                                      TextButton(
                                        onPressed: () {
                                          setState(() {
                                            counter--;
                                          });
                                        },
                                        child: Icon(Icons.remove),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: Get.height * 0.04,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Get.width * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Total",
                          style: AppConstants.kDarkStyle
                              .copyWith(color: Colors.grey),
                        ),
                        Text(
                          "\$400",
                          style: AppConstants.kDarkStyle,
                        ),
                      ],
                    ),
                    customButton(
                        height: 0.09,
                        width: 0.46,
                        text: "Pay Now",
                        textColor: Colors.white,
                        color: Colors.pinkAccent.withOpacity(0.7)),
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
