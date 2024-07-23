import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:hebrew_to_amharic/app/config/app_sizes.dart';
import 'package:hebrew_to_amharic/app/config/app_theme.dart';
import 'package:hebrew_to_amharic/app/services/constants.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title
              Text(
                Constants.appTtitle,
                style: AppTypography.poppins10W400.copyWith(
                  fontSize: AppSizes.font_26,
                  color: AppColors.whiteOff,
                ),
              ),
              SizedBox(height: 16.0),
              // CircularProgressIndicator
              CircularProgressIndicator(
                color: AppColors.whiteOff,
              ),
            ],
          ),
          // Copywrite text at the bottom center
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                controller.copywrite,
                style: AppTypography.poppins10W400.copyWith(
                  fontSize: AppSizes.font_12,
                  color: AppColors.whiteOff,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
