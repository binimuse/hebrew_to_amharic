// ignore_for_file: must_be_immutable, unnecessary_null_comparison, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:hebrew_to_amharic/app/config/app_colors.dart';
import 'package:hebrew_to_amharic/app/config/app_theme.dart';
import 'package:hebrew_to_amharic/app/services/constants.dart';

import 'package:sizer/sizer.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.w,
      child: Drawer(
        clipBehavior: Clip.none,
        backgroundColor: Colors.white,
        child: Container(
          color: AppColors.whiteOff,
          child: Column(
            children: [
              buildHeaderLogo(context),
              SizedBox(height: CustomSizes.mp_v_2),
              Container(
                color: AppColors.whiteOff,
                padding: EdgeInsets.symmetric(
                  horizontal: CustomSizes.mp_w_4,
                ),
                child: Column(
                  children: [
                    buildRow(
                      title: "Language".tr,
                      onTap: () {
                        //  Get.to(AppLanguagePickerDialog());
                      },
                      context: context,
                      icon: FontAwesomeIcons.language,
                    ),
                    buildRow(
                      title: "About us".tr,
                      onTap: () {
                        //  Get.toNamed(Routes.ABOUTUS);
                      },
                      context: context,
                      icon: FontAwesomeIcons.infoCircle,
                    ),
                    buildRow(
                      title: "Help & support".tr,
                      onTap: () {
                        //  Get.toNamed(Routes.HELP_PAGE);
                      },
                      context: context,
                      icon: FontAwesomeIcons.circleQuestion,
                    ),
                    buildRow(
                      title: "Terms and Conditions".tr,
                      onTap: () {
                        //   Get.toNamed(Routes.TERMS_AND_CONDITIONS);
                      },
                      context: context,
                      icon: FontAwesomeIcons.text,
                    ),
                    buildRow(
                      title: "Privacy Policy".tr,
                      onTap: () {
                        // Get.toNamed(Routes.PRIVACY_POLICY_PAGE);
                      },
                      context: context,
                      icon: FontAwesomeIcons.shield,
                    ),
                    SizedBox(height: CustomSizes.mp_v_1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildHeaderLogo(BuildContext context) {
    return Container(
      height: 15.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primary, AppColors.primary],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: CustomSizes.mp_v_6),
          Center(
            child: Text(
              Constants.appTtitle.tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppTypography.poppins10W400.copyWith(
                  color: AppColors.whiteOff,
                  fontSize: 19.sp,
                  letterSpacing: 2.9),
            ),
          ),
        ],
      ),
    );
  }

  Container buildDecorativeTop() {
    return Container(
      width: CustomSizes.icon_size_32,
      height: CustomSizes.icon_size_20,
      color: AppColors.whiteOff,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            left: CustomSizes.mp_v_6,
            bottom: CustomSizes.mp_v_6,
            width: CustomSizes.icon_size_16 * 2.0,
            height: CustomSizes.icon_size_16 * 2.0,
            child: Opacity(
              opacity: 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  1000,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: CustomSizes.mp_v_8,
            width: CustomSizes.icon_size_16 * 2.0,
            height: CustomSizes.icon_size_16 * 2.0,
            child: Opacity(
              opacity: 0.9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  1000,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: CustomSizes.mp_v_6 * 1.6,
            bottom: CustomSizes.mp_v_6,
            width: CustomSizes.icon_size_16 * 2.0,
            height: CustomSizes.icon_size_16 * 2.0,
            child: Opacity(
              opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.grayDark,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      spreadRadius: 2,
                      color: Colors.black.withOpacity(0.2),
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRow({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: CustomSizes.mp_v_1,
                horizontal: CustomSizes.mp_w_2,
              ),
              margin: EdgeInsets.symmetric(
                vertical: CustomSizes.mp_v_2 / 2,
              ),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: AppColors.gold,
                    size: CustomSizes.icon_size_4,
                  ),
                  SizedBox(width: CustomSizes.mp_w_4),
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      style: AppTypography.poppins10W400.copyWith(
                          color: AppColors.primary,
                          fontSize: 18,
                          letterSpacing: 0.8),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  String truncateWithEllipsis(int cutoff, String myString) {
    return (myString.length <= cutoff)
        ? myString
        : '${myString.substring(0, cutoff)}...';
  }
}

class CircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}
