import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iot_control/constant.dart';
import 'package:iot_control/screens/login/login.dart';

import 'screens/add_device/add_device.dart';
import 'screens/home/home.dart';
import 'screens/page_navigator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Constants.primaryColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          titleSpacing: 1,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ),
      title: 'Material App',
      routes: {
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        PageNavigator.routeName: (context) => const PageNavigator(),
        AddDevice.routeName: (context) => const AddDevice(),
      },
      initialRoute: LoginScreen.routeName,
    );
  }
}
