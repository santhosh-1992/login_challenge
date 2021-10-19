import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static String routeName = '/login_screen';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(),
    );
  }
}
