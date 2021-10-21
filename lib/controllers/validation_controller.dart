import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ValidationController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
  late TextEditingController emailController,
      passwordController,
      firstNameController,
      lastNameController,
      phoneController;
  var email = '';
  var signupEmail = '';
  var password = '';
  var signuppassword = '';
  var firstName = '';
  var lastName = '';
  var phone = '';
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Provide valid Email';
    }
    return null;
  }

  validateFirstname(String value) {
    if (value.length < 4) {
      return 'invalid name';
    }
    return null;
  }

  validateLaststname(String value) {
    if (value.length < 4) {
      return 'invalid name';
    }
    return null;
  }

  validatePhone(String value) {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Provide valid Phone Number';
    }
    return null;
  }

  validatePassword(String value) {
    bool hasUppercase = value.contains(new RegExp(r'[A-Z]'));
    bool hasDigits = value.contains(new RegExp(r'[0-9]'));
    bool hasLowercase = value.contains(new RegExp(r'[a-z]'));
    bool hasSpecialCharacters =
        value.contains(new RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
    bool hasMinLength = value.length > 8;
    if (hasDigits &
        hasUppercase &
        hasLowercase &
        hasSpecialCharacters &
        hasMinLength) {
      return null;
    }
    return 'should be more than 8 including Number, Capital letter, small letter & special characters.';
  }

  void checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    loginFormKey.currentState!.save();
  }

  void signUp() {
    final isValid = signUpFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    signUpFormKey.currentState!.save();
  }
}
