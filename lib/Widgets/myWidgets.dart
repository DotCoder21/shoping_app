import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';

Widget customButton(
    {double height, double width, String text, Color color, Color textColor}) {
  return Container(
    height: Get.height * height,
    width: Get.width * width,
    child: Center(
        child: Text(
      text,
      style: AppConstants.kLightStyle
          .copyWith(fontSize: Get.height * 0.02, color: textColor),
    )),
    decoration:
        BoxDecoration(color: color, borderRadius: BorderRadius.circular(33)),
  );
}

Widget customAppBar(
    {double iconHeight,
    double iconWidth,
    IconData icon,
    Color iconColor,
    Color iconBackground,
    String text1,
    String text2,
    String image,
    double radius}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: Get.height * iconHeight,
        width: Get.width * iconWidth,
        decoration:
            BoxDecoration(color: iconBackground, shape: BoxShape.circle),
        child: Center(
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
      ),
      Column(
        children: [
          Text(
            text1,
            style: AppConstants.kLightStyle.copyWith(fontSize: 12),
          ),
          Text(
            text2,
            style: AppConstants.kDarkStyle.copyWith(fontSize: 14),
          ),
        ],
      ),
      CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: radius,
      ),
    ],
  );
}
