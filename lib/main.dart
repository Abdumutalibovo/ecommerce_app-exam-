import 'package:ecommerce/screens/info_page.dart';
import 'package:ecommerce/screens/login_page.dart';
import 'package:ecommerce/screens/login_page_2.dart';
import 'package:ecommerce/screens/main_page.dart';
import 'package:ecommerce/screens/menu_page.dart';
import 'package:ecommerce/screens/splash_page.dart';
import 'package:ecommerce/utils/app_routes.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splash,
      onGenerateRoute: AppRoutes.generateRoute,
      home: SplashPage(),
      theme: ThemeData(primarySwatch: Colors.grey),
    );
  }
}