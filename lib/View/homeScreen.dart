import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopify_app/AppConstants/AppConstants.dart';
import 'package:shopify_app/DATA/AppData.dart';
import 'package:shopify_app/Widgets/myWidgets.dart';

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
      backgroundColor: Colors.white60.withOpacity(0.9),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                customAppBar(
                  iconHeight: 0.1,
                  iconWidth: 0.14,
                  icon: Icons.widgets,
                  iconBackground: Colors.white,
                  iconColor: Colors.pinkAccent,
                  text1: "Hallo zaskia",
                  text2: "Jakarta INA",
                  image: "assets/images/image7.jpg",
                  radius: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: Get.height * 0.06,
                      width: Get.width * 0.7,
                      decoration: BoxDecoration(
                          color: Colors.white,
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
                      height: Get.height * 0.06,
                      width: Get.width * 0.14,
                      child: Icon(
                        Icons.wrap_text_sharp,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
                  height: Get.height * 0.2,
                  width: Get.width,
                  decoration: BoxDecoration(
                      color: Colors.pink.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: Get.height * 0.02,
                ),
                Container(
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
                                color: i == 0 ? Colors.pinkAccent : Colors.grey,
                                borderRadius: BorderRadius.circular(20)),
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2,
                          crossAxisSpacing: 4,
                          childAspectRatio: 0.6),
                      itemCount: 4,
                      itemBuilder: (cxt, i) {
                        return Container(
                          // height: Get.height * 0.4,
                          // width: Get.width * 0.29,
                          // color: Colors.pinkAccent,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                height: Get.height * 0.29,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(favoriteList[i].image),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(40)),
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
                                        "Casual v-neck",
                                        style: AppConstants.kDarkStyle
                                            .copyWith(fontSize: 12),
                                      ),
                                      Text(
                                        "\$100",
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
                                      Icons.favorite,
                                      color: Colors.pink.withOpacity(0.4),
                                      size: 20,
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
