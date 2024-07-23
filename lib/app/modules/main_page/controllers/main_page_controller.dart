import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hebrew_to_amharic/app/modules/history_page/views/history_page_view.dart';
import 'package:hebrew_to_amharic/app/modules/home/views/home_view.dart';
import 'package:hebrew_to_amharic/app/modules/saved_page/views/saved_page_view.dart';

class MainPageController extends GetxController {
  List<Widget> pages = [
    HomeView(),
    SavedPageView(),
    HistoryPageView(),
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
