import 'package:ecommerce/screens/wearable_page.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/images.dart';
import 'package:ecommerce/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<Widget> _pages = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2F2),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, left: 50),
                    child: SvgPicture.asset(myImages.more_icon),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 30),
                    child: Container(
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            color: Colors.grey.withOpacity(0.3), width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 16,
                          ),
                          SvgPicture.asset(myImages.search_icon),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search",
                            style: Mystyle.RelawayMedium500.copyWith(
                                fontSize: 18, color: myColors.C_868686),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    "Order online \ncollect in store",
                    style: Mystyle.RalewayBold700.copyWith(fontSize: 34),
                  )),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Container(
                    child: DefaultTabController(
                  length: 4,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(
                            child: Text("Wearable",
                                style: Mystyle.RelawayMedium500.copyWith(
                                    fontSize: 17)),
                          ),
                          Tab(
                            child: Text("Laptops",
                                style: Mystyle.RelawayMedium500.copyWith(
                                    fontSize: 17)),
                          ),
                          Tab(
                            child: Text("Phones",
                                style: Mystyle.RelawayMedium500.copyWith(
                                    fontSize: 17)),
                          ),
                          Tab(
                            child: Text("Drones",
                                style: Mystyle.RelawayMedium500.copyWith(
                                    fontSize: 17)),
                          ),
                        ],
                      ),
                      Container(
                        color: Color(0xFFF2F2F2),
                        height: 400,
                        child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            children: [
                              WearablePage(),
                              Container(
                                child: Text("Page 2"),
                              ),
                              Container(
                                child: Text("Page 3"),
                              ),
                              Container(
                                child: Text("Page 4"),
                              )
                            ]),
                      )
                    ],
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
