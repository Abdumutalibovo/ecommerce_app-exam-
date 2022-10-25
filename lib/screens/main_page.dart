import 'package:ecommerce/screens/menu_page.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:ecommerce/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {

  List<Widget> _pages=[
    MenuPage(),
    Container(),
    Container(),
    Container(),
  ];

  int currentPageIndex=0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2F2),
      body: _pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: myColors.C_5956E9,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index){
          setState(() {
            currentPageIndex=index;
          });
        },

        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset(myImages.home_icon), label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset(myImages.favorite_icon), label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset(myImages.profile_icon), label: ''),
        BottomNavigationBarItem(icon: SvgPicture.asset(myImages.buy_icon), label: ''),
      ]),
    );
  }
}