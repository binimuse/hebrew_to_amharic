// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:hebrew_to_amharic/app/services/constants.dart';
import 'package:hebrew_to_amharic/app/utils/shared_prefrence.dart';


class LanUtil {
  ///SAVE SELECTED LANGUAGE
  static saveLanguage(String lan) async {
    await PreferenceUtils.setString(
      Constants.selectedLanguage,
      lan,
    );

    String selectedLan = getSelecctedLanguage();

    var locale = Locale(selectedLan);
    Get.updateLocale(locale);
  }

  ///GET SELECTED LANGUAGE
  static String getSelecctedLanguage() {
    String lan = PreferenceUtils.getString(
      Constants.selectedLanguage,
      Constants.lanAm,
    );

    return lan;
  }


}
