import 'package:flutter/cupertino.dart';

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

/*
  static getResponsiveScreenHeight() {
    return Get.height;
  }

  static getResponsiveScreenWidth() {
    return Get.width;
  }

  static getResponsiveScreenSize() {
    return Get.size;
  }

  static getResponsiveHeight(double pixel) {
    double responsiveHeight = getResponsiveScreenHeight() / pixel;
    return responsiveHeight;
  }

  static getResponsiveWidth(double pixel) {
    double responsiveWidth = getResponsiveScreenWidth() / pixel;
    return responsiveWidth;
*/
}
