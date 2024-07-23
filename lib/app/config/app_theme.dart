import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  const AppTheme();

  static ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Poppins',
    textSelectionTheme: TextSelectionThemeData(
      selectionHandleColor: AppColors.appLightBlue,
      cursorColor: AppColors.black,
      selectionColor: AppColors.whiteOff,
    ),
  );

  static const annotatedRegionValue = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  );
}

class CustomSizes {
  ///for padding and margin sizes
  ///horizontal sizes
  static final double mp_w_1 = 1.w;
  static final double mp_w_2 = 2.w;
  static final double mp_w_3 = 3.w;
  static final double mp_w_4 = 4.w;
  static final double mp_w_6 = 6.w;
  static final double mp_w_8 = 8.w;
  static final double mp_w_10 = 10.w;
  static final double mp_w_12 = 12.w;
  static final double mp_w_14 = 14.w;
  static final double mp_w_16 = 16.w;

  ///for padding and margin sizes
  ///vertical sizes
  static final double mp_v_1 = 1.h;
  static final double mp_v_2 = 2.h;
  static final double mp_v_3 = 3.h;
  static final double mp_v_4 = 4.h;
  static final double mp_v_6 = 6.h;
  static final double mp_v_8 = 8.h;
  static final double mp_v_9 = 9.h;
  static final double mp_v_10 = 10.h;
  static final double mp_v_12 = 12.h;
  static final double mp_v_14 = 14.h;
  static final double mp_v_16 = 16.h;
  static final double mp_v_30 = 30.h;

  ///for font sizes
  static final double font_2 = 2.sp;
  static final double font_4 = 4.sp;
  static final double font_6 = 6.sp;
  static final double font_8 = 8.sp;
  static final double font_9 = 9.sp;
  static final double font_10 = 10.sp;
  static final double font_11 = 11.sp;
  static final double font_12 = 12.sp;
  static final double font_14 = 14.sp;
  static final double font_16 = 16.sp;
  static final double font_18 = 18.sp;
  static final double font_20 = 20.sp;
  static final double font_22 = 22.sp;
  static final double font_24 = 24.sp;
  static final double font_26 = 26.sp;
  static final double font_28 = 28.sp;

  ///for icon sizes
  static final double icon_size_2 = 2.w;
  static final double icon_size_3 = 3.w;
  static final double icon_size_4 = 4.w;
  static final double icon_size_6 = 6.w;
  static final double icon_size_7 = 7.w;
  static final double icon_size_8 = 8.w;
  static final double icon_size_10 = 10.w;
  static final double icon_size_12 = 12.w;
  static final double icon_size_14 = 14.w;
  static final double icon_size_16 = 16.w;
  static final double icon_size_18 = 18.w;
  static final double icon_size_20 = 20.w;
  static final double icon_size_22 = 22.w;
  static final double icon_size_24 = 24.w;
  static final double icon_size_26 = 26.w;
  static final double icon_size_28 = 28.w;
  static final double icon_size_30 = 30.w;
  static final double icon_size_32 = 32.w;

  ///for shape radius
  static const double radius_2 = 2;
  static const double radius_3 = 3;
  static const double radius_4 = 4;
  static const double radius_5 = 5;
  static const double radius_6 = 6;
  static const double radius_7 = 7;
}

class AppTypography {
  static final TextStyle poppins10W400 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins12W600 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle poppins12W400 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins14W400 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins14W800 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle poppins14W600 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle poppins14W500 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle poppins16W400 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins16W500 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle poppins16W700 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle poppins16W900 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w900,
  );

  static final TextStyle poppins18W400 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins18W600 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle poppins20W600 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle poppins22W800 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w800,
  );

  static final TextStyle poppins24W500 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle poppins26W500 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle poppins26W700 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle poppins26W900 = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w900,
  );

  static final TextStyle poppins28W400 = TextStyle(
    fontSize: 28.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle poppins30W600 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle poppins30W800 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w800,
  );
}
