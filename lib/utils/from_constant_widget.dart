import 'package:flutter/material.dart';

InputDecoration formInputDecoration(String hintText, IconData icon) {
  return InputDecoration(
      hintText: hintText,
      errorMaxLines: 2,
      prefixIcon: Icon(
        icon,
        color: Colors.black,
      ),
      border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)));
}

MaterialButton formButton(String title, Function() fun) {
  return MaterialButton(
    color: Colors.blue,
    onPressed: fun,
    child: Text(
      title,
      textAlign: TextAlign.center,
    ),
    height: 50,
    minWidth: 500,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  );
}
