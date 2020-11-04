import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  // const PrimaryColor = const Color(0xFF151026);

  return AppBar(
    // theme: ThemeData(primaryColor: PrimaryColor),
    title: Text(
      'WhatsNew',
      style: TextStyle(
          fontFamily: 'Oswald',
          color: Colors.yellow[300],
          fontStyle: FontStyle.italic,
          fontSize: 24),
    ),
    // backgroundColor: PrimaryColor,
  );
}

InputDecoration textfieldInputDecoration(String hintText) {
  return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.white54),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white54)),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)));
}

TextStyle simpleTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}

TextStyle mediumTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 17,
  );
}
