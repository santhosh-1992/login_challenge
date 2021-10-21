import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_challenge/controllers/validation_controller.dart';
import 'package:login_challenge/utils/from_constant_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final controller = Get.put(ValidationController());
  doSignup() => {controller.signUp()};
  var maskFormatter = new MaskTextInputFormatter(
      mask: '+91- ##########', filter: {"#": RegExp(r'[0-9]')});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
        title: Text('Sign Up'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: controller.signUpFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.firstNameController,
                  onSaved: (value) {
                    controller.firstName = value!;
                  },
                  validator: (value) {
                    return controller.validateFirstname(value!);
                  },
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: formInputDecoration('first name', Icons.person),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.lastNameController,
                  onSaved: (value) {
                    controller.lastName = value!;
                  },
                  validator: (value) {
                    return controller.validateLaststname(value!);
                  },
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration:
                      formInputDecoration('last name', Icons.person_outline),
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: controller.emailController,
                  onSaved: (value) {
                    controller.signupEmail = value!;
                  },
                  validator: (value) {
                    return controller.validateEmail(value!);
                  },
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: formInputDecoration('Email', Icons.email),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  inputFormatters: [maskFormatter],
                  controller: controller.phoneController,
                  onSaved: (value) {
                    controller.phone = value!;
                  },
                  validator: (value) {
                    return controller.validatePhone(value!);
                  },
                  keyboardType: TextInputType.number,
                  autofocus: false,
                  decoration: formInputDecoration('Phone', Icons.phone),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller.passwordController,
                  onSaved: (value) {
                    controller.signuppassword = value!;
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
                formButton('Sign Up', doSignup)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
