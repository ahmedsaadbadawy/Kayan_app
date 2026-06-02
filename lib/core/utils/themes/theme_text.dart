import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kayan_app/core/utils/themes/theme_color.dart';

class ThemeText {

  static TextStyle text24darkBlue() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24.sp,
      color: kdarkBlue,
    );
  }
  static TextStyle text20darkBlue() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.sp,
      color: kdarkBlue,
    );
  }

  static TextStyle text20secondary() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
      color: ksecondaryColor,
    );
  }
  static TextStyle text18secondary() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 18.sp,
      color: ksecondaryColor,
    );
  }

  static TextStyle text16secondary() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      color: ksecondaryColor,
    );
  }

  static TextStyle text16gray() {
    return TextStyle(fontSize: 16.sp, color: Colors.grey[700]);
  }

  static TextStyle text16grayUnderlined() {
    return TextStyle(
      fontSize: 16.sp,
      color: Colors.grey[700],
      decoration: TextDecoration.underline,
    );
  }
}
