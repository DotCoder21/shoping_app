import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/DATA/AppData.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';
import 'package:shopify_app/controllers/cartController.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  CartController cartController = Get.put(CartController());

  void calculations() {
    var sum = 0;

    for (int i = 0; i < cartList.length; i++) {
      print(cartList[i].itemPrice);

      sum += cartList[i].itemPrice;
    }

    print(cartList);

    print(sum);
    cartController.totalCartPayment(sum);
  }

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
                text2: "Cart",
                image: "assets/images/image7.jpg",
                radius: 20,
              ),
              Container(
                height: Get.height * 0.58,
                child: cartList.length <= 0
                    ? Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text("No Item Available"),
                      )
                    : cartList.isEmpty || cartList == null
                        ? Container()
                        : ListView.builder(
                            itemCount: cartList.length,
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
                                                  cartList[index].image,
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
                                            cartList[index].itemName,
                                            style: AppConstants.kDarkStyle
                                                .copyWith(fontSize: 12),
                                          ),
                                          Text(
                                            cartList[index].genderStyle,
                                            style: AppConstants.kLightStyle
                                                .copyWith(fontSize: 12),
                                          ),
                                          SizedBox(
                                            height: Get.height * 0.024,
                                          ),
                                          Text(
                                            cartList[index]
                                                .itemPrice
                                                .toString(),
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
                                                horizontal: 8, vertical: 5),
                                            child: Container(
                                              height: Get.height * 0.034,
                                              width: Get.width * 0.08,
                                              child: InkWell(
                                                onTap: () {
                                                  cartList.removeAt(index);
                                                  setState(() {
                                                    calculations();
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  color: Colors.pinkAccent
                                                      .withOpacity(0.6),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                            ),
                                          ),
                                          Inc(index),
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
                        Obx(
                          () => Text(
                            cartController.totalCartPayment.toString(),
                            style: AppConstants.kDarkStyle,
                          ),
                        ),
                      ],
                    ),
                    customButton(
                        height: 0.05,
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

class Inc extends StatefulWidget {
  final index;

  Inc(this.index);
  @override
  _IncState createState() => _IncState();
}

class _IncState extends State<Inc> {
  CartController cartController = Get.find();

  void calculations() {
    var sum = 0;

    for (int i = 0; i < cartList.length; i++) {
      print(cartList[i].itemPrice);

      sum += cartList[i].itemPrice;
    }

    print(cartList);

    print(sum);
    cartController.totalCartPayment(sum);
  }

  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                if (counter <= 0) {
                } else {
                  counter--;
                  setState(() {
                    
                  });

                }
              });
            },
            child: Icon(Icons.remove)),
        Text(counter.toString()),
        TextButton(
          onPressed: () {
            counter ++;
            setState(() {
              
            });
          },
          child: Icon(Icons.add),
        )
      ],
    );
  }
}
