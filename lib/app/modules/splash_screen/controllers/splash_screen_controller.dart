import 'package:get/get.dart';

import 'package:hebrew_to_amharic/app/routes/app_pages.dart';

import 'package:hebrew_to_amharic/app/services/constants.dart';

class SplashController extends GetxController {
  final String copywrite =
      "${Constants.appTtitle} ${"2024. All rights reserved".tr}";

  String get appcastURL => '';

  @override
  void onInit() {
    super.onInit();

    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.MAIN_PAGE);
    });

    // checkIfLogined();
  }
}
