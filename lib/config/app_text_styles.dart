import 'package:flutter/material.dart';
class AppTextStyle {
  //Text Sized
  static TextStyle hintStyle() {
    return  const TextStyle(
      color: Color(0xFF9DA1B3),
      fontFamily: "ProductSans",
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
  } //Text Sized


  static TextStyle filedTextStyle({double fontSize=13,}) {
    return  TextStyle(
        fontFamily: "ProductSans",
        color: Color(0xFF363B64),
        fontSize: fontSize,
        fontWeight: FontWeight.bold);
  }


  static TextStyle h3TitleTextStyle({
    Color color = Colors.black,
    double fontSize = 18,

    FontWeight fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
        fontFamily: "ProductSans",
        color: color,
        fontSize: fontSize,
        fontWeight:fontWeight);
  }
}
