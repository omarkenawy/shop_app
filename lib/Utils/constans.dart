import 'package:flutter/material.dart';

class Constans {
  static Color darkPurple = const Color(0xff734CC9);
  static String mainFont = "Manrope";
  static Color greenColor = const Color(0xff90D272);
  static Color termsColor = const Color(0xffB2B3B4);
  static const boxShadow = [
    BoxShadow(
      color: Colors.black26,
      //offset: Offset(3, 3),
      //spreadRadius: 4,
      blurStyle: BlurStyle.outer,
      blurRadius: 5,
    ),
  ];
}

class ApiPaths {
  static String allProductPath = "products";
  static String AllCategories = "categories";
  static String singleProduct = "products/1";
  static String allCarts = "cart";
  static String loginURL = "login";
  static String registerUrl = "register";
}
