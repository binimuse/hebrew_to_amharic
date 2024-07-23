import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hebrew_to_amharic/app/modules/home/views/home_view.dart';

class MainPageController extends GetxController {
  List<Widget> pages = [
    HomeView(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  final count = 0.obs;

  RxInt selectedViewIndex = 0.obs;
  void changeBottomPage(int i) {
    selectedViewIndex(i);
  }

  /// FOR CHECKING WHEN USER TAPS BACK TWICE TO EXIT APP
  DateTime? currentBackPressTime;

  changescreen(var i) {
    selectedViewIndex.value = i;
  }
}
