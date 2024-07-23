import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:hebrew_to_amharic/app/config/app_sizes.dart';
import 'package:hebrew_to_amharic/app/config/app_theme.dart';
import 'package:hebrew_to_amharic/app/services/constants.dart';
import 'package:sizer/sizer.dart';
import '../controllers/detail_page_controller.dart';

class DetailPageView extends GetView<DetailPageController> {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteOff.withOpacity(0.9),
      body: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: Column(
              children: [
                AppBar(
                  leading: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  backgroundColor: AppColors.primary,
                  title: Text(
                    Constants.appTtitle,
                    style: AppTypography.poppins10W400.copyWith(
                      fontSize: AppSizes.font_20,
                      color: Colors.white,
                    ),
                  ),
                  centerTitle: true,
                  elevation: 0, // Remove shadow
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Word',
                    style: AppTypography.poppins10W400.copyWith(
                      fontSize: AppSizes.font_28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 15.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.copy, color: Colors.white),
                      ),
                      Container(
                        width: 15.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.bookmark, color: Colors.white),
                      ),
                      Container(
                        width: 15.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.share, color: Colors.white),
                      ),
                      Container(
                        width: 15.w,
                        height: 6.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Icon(Icons.info, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Card(
                  shadowColor: Colors.white.withOpacity(0.1),
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Meaning',
                          style: AppTypography.poppins10W400.copyWith(
                            fontSize: AppSizes.font_20,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: AppColors.grayLighter,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'Meaning of the word',
                      style: AppTypography.poppins10W400.copyWith(
                        fontSize: AppSizes.font_20,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                Card(
                  shadowColor: Colors.white.withOpacity(0.1),
                  color: Colors.white,
                  margin: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Definition',
                          style: AppTypography.poppins10W400.copyWith(
                            fontSize: AppSizes.font_20,
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(
                          color: AppColors.grayLighter,
                        ),
                      ],
                    ),
                    subtitle: Text(
                      'Definition of the word',
                      style: AppTypography.poppins10W400.copyWith(
                        fontSize: AppSizes.font_20,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
