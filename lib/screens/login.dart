import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_challenge/controllers/home_controller.dart';
import 'package:login_challenge/utils/from_constant_widget.dart';

class Login extends StatefulWidget {
  static String routeName = '/login_screen';
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controller = Get.put(HomeController());
  doLogin() => {controller.checkLogin()};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: controller.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.emailController,
                  onSaved: (value) {
                    controller.email = value!;
                  },
                  validator: (value) {
                    return controller.validateEmail(value!);
                  },
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      formInputDecoration('Username or Email', Icons.email),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.passwordController,
                  onSaved: (value) {
                    controller.password = value!;
                  },
                  validator: (value) {
                    return controller.validatePassword(value!);
                  },
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  autofocus: false,
                  decoration: formInputDecoration('Password', Icons.lock),
                ),
                SizedBox(
                  height: 50,
                ),
                formButton('Login', doLogin)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
