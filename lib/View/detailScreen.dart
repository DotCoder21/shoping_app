import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/DATA/AppData.dart';
import 'package:shopify_app/Models/CardsModel.dart';
import 'package:shopify_app/Models/FavoriteModel.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';
import 'package:shopify_app/controllers/cartController.dart';

class DetailScreen extends StatefulWidget {

   FavoriteModel item;

  DetailScreen({this.item});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  CartController cartController = Get.put(CartController());
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
                        image: AssetImage(widget.item.image),
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
                          widget.item.itemName,
                          style: AppConstants.kDarkStyle,
                        ),
                        Text(
                          "\$${widget.item.itemPrice}",
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
                        InkWell(
                          onTap: (){
                            
                            cartList.add(
                              CardsModel(
                                image: widget.item.image,
                                itemName: widget.item.itemName,
                                itemPrice: widget.item.itemPrice,
                                genderStyle: "Lorem Ipsum"
                              ),

                            );

                            var sum = 0 ;

                            for(int i = 0;i<cartList.length; i++){

                              print(cartList[i].itemPrice); 

                              sum += cartList[i].itemPrice;

                            }
                            
                              print(cartList);

                              print(sum);
                              cartController.totalCartPayment(sum);

                          },
                          child: Container(
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
