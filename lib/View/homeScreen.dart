import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/DATA/AppData.dart';
import 'package:shopify_app/Models/FavoriteModel.dart';
import 'package:shopify_app/View/detailScreen.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';
import 'package:shopify_app/utils/appColors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List chips = [
    "All",
    "Populer",
    "Recent",
    "Recomended",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54.withOpacity(0.1),
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      customAppBar(
                        iconHeight: 0.1,
                        iconWidth: 0.10,
                        icon: Icons.widgets,
                        iconBackground: Colors.white,
                        iconColor: AppColors.primaryColor.withOpacity(0.5),
                        text1: "Hallo zaskia",
                        text2: "Jakarta INA",
                        image: "assets/images/image1.jpg",
                        radius: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: Get.height * 0.05,
                            width: Get.width * 0.72,
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: Get.width * 0.03,
                          ),
                          Container(
                            height: Get.height * 0.05,
                            width: Get.width * 0.14,
                            child: Icon(
                              Icons.wrap_text_sharp,
                              color: AppColors.whiteColor,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                      Container(
                        height: Get.height * 0.2,
                        width: Get.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: Get.height * 0.2,
                              width: Get.width * 0.3,
                              child: Image.asset("assets/images/corper.png"),
                            ),
                            SizedBox(
                              width: Get.width * 0.05,
                            ),
                            Container(
                              width: Get.width * 0.4,
                              height: Get.height * 0.1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Big Sale",
                                    style: AppConstants.kDarkStyle.copyWith(
                                        color: AppColors.whiteColor,
                                        fontSize: Get.height * 0.02,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Get the trendy data at discount of up to 50%",
                                    style: AppConstants.kDarkStyle.copyWith(
                                      color: AppColors.whiteColor.withOpacity(0.5),
                                      fontSize: Get.height * 0.014,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        height: Get.height * 0.02,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: Get.width * 0.04),
                  height: Get.height * 0.05,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: chips.length,
                      itemBuilder: (cxt, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            height: Get.height * 0.02,
                            decoration: BoxDecoration(
                                color: i == 0 ? AppColors.primaryColor.withOpacity(0.5) : Colors.grey.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(18)),
                            child: Center(
                                child: Text(
                              chips[i],
                              style: AppConstants.kLightStyle
                                  .copyWith(fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Get.height * 0.03,
                      ),
                      Container(
                        width: Get.width,
                        height: Get.height,
                        child: GridView.builder(
                            // scrollDirection: Axis.vertical,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 2,
                                    crossAxisSpacing: 4,
                                    childAspectRatio: 0.6),
                            itemCount: favoriteList.length,
                            itemBuilder: (cxt, i) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => DetailScreen(
                                    item: favoriteList[i],
                                  ));
                                },
                                child: Container(
                                  // height: Get.height * 0.4,
                                  // width: Get.width * 0.29,
                                  // color: Colors.pinkAccent,
                                  child: Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 7),
                                        height: Get.height * 0.29,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    favoriteList[i].image),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                      ),
                                      SizedBox(
                                        height: Get.height * 0.003,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                favoriteList[i].itemName,
                                                style: AppConstants.kDarkStyle
                                                    .copyWith(fontSize: 12),
                                              ),
                                              Text(
                                                "\$${favoriteList[i].itemPrice.toString()}",
                                                style: AppConstants.kLightStyle
                                                    .copyWith(fontSize: 12),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: Get.height * 0.009,
                                            width: Get.width * 0.009,
                                            child: Center(
                                                child: Icon(
                                              Icons.favorite_border,
                                              color:
                                                  Colors.pink.withOpacity(0.4),
                                              size: 20,
                                            )),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
