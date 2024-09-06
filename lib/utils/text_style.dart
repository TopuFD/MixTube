
import 'package:filture_tube/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextStyle {
  //==============================================heading one
  static TextStyle h1({Color? color,FontWeight? fontWeight,double? fontSize,double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.purple_500,
      fontSize: fontSize ?? 25.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
  //==============================================heading two
  static TextStyle h2({Color? color,FontWeight? fontWeight,double? fontSize,double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.black_500,
      fontSize: fontSize ?? 22.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
  //==============================================heading Three
  static TextStyle h3({Color? color,FontWeight? fontWeight,double? fontSize,double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.purple_400,
      fontSize: fontSize ?? 16.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
  //==============================================heading four
  static TextStyle h4({Color? color,FontWeight? fontWeight,double? fontSize,double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.black_400,
      fontSize: fontSize ?? 12.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
    );
  }
  //==============================================heading five
  static TextStyle h5({Color? color,FontWeight? fontWeight,double? fontSize,double? letterSpacing,s
  }) {
    return TextStyle(
      color: color ?? AppColors.purple_400,
      fontSize: fontSize ?? 8.sp,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight ?? FontWeight.bold,
      overflow: TextOverflow.ellipsis
    );
  }
}
