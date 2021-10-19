import 'package:flutter/material.dart';
import 'package:login_challenge/routes.dart';
import 'package:login_challenge/screens/login.dart';
import 'package:login_challenge/utils/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kprimaryColor, scaffoldBackgroundColor: Colors.white),
      routes: routes,
      initialRoute: Login.routeName,
    );
  }
}
