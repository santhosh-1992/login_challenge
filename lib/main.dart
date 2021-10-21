import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_challenge/routes.dart';
import 'package:login_challenge/screens/login.dart';
import 'package:login_challenge/screens/sign_up.dart';
import 'package:login_challenge/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kprimaryColor, scaffoldBackgroundColor: Colors.white),
      routes: routes,
      // initialRoute: Login(),
      home: Login(),
      getPages: [
        GetPage(name: '/', page: () => Login()),
        GetPage(name: '/signup', page: () => SignUp()),
      ],
    );
  }
}
