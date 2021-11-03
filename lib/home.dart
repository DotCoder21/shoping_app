import 'package:flutter/material.dart';
import 'package:shopify_app/View/CartScreen.dart';
import 'package:shopify_app/View/orders.dart';
import 'package:shopify_app/View/profile.dart';
import 'package:shopify_app/utils/appColors.dart';

import 'View/homeScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List list = [
    HomeScreen(),
    CartScreen(),
    Orders(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[index],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 4.0,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 40, color: Colors.black12, spreadRadius: 5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home , color: index == 0 ?AppColors.primaryColor.withOpacity(0.5) : Colors.grey),
                onPressed: () {
                  setState(() {
                    index = 0;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart,color: index == 1 ?AppColors.primaryColor.withOpacity(0.5) : Colors.grey),
                onPressed: () {
                  setState(() {
                    index = 1;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.list,color: index == 2 ?AppColors.primaryColor.withOpacity(0.5) : Colors.grey),
                onPressed: () {
                  setState(() {
                    index = 2;
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.person_outline,color: index == 3 ?AppColors.primaryColor.withOpacity(0.5) : Colors.grey),
                onPressed: () {
                  setState(() {
                    index = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
