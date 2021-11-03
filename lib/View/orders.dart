import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';
import 'package:shopify_app/data/AppData.dart';
import 'package:shopify_app/utils/appColors.dart';

class Orders extends StatefulWidget {

  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
                            itemCount: favoriteList.length,
                            itemBuilder: (cxt, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 6, horizontal: 9),
                                  height: Get.height * 0.12,
                                  width: Get.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            right: Get.width * 0.03),
                                        width: Get.width * 0.2,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  favoriteList[index].image,
                                                ),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            favoriteList[index].itemName,
                                            style: AppConstants.kDarkStyle
                                                .copyWith(fontSize: 12),
                                          ),
                                          
                                          SizedBox(
                                            height: Get.height * 0.024,
                                          ),
                                          Text(
                                            favoriteList[index].itemPrice.toString(),
                                            style: AppConstants.kDarkStyle,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 7),
                                            child: Text("11/3/2021"),
                                          ),
                                        
                                        Container(
                                          child: Row(
                                            children: [
                                              Text("Status : in progress...",style: TextStyle(fontSize: 12 , color: AppColors.primaryColor.withOpacity(0.5)),),
                                            ],
                                          ),
                                        ),


                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
    );
  }
}