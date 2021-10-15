// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutterapplication1/pages/cartpage.dart';
import 'package:flutterapplication1/pages/homepage.dart';
import 'package:flutterapplication1/pages/loginpage.dart';
import 'package:flutterapplication1/utils/routes.dart';
import 'package:flutterapplication1/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
