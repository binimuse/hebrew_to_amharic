import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:hebrew_to_amharic/app/app_language/translations.dart';

import 'package:hebrew_to_amharic/app/config/app_theme.dart';

import 'package:hebrew_to_amharic/app/services/constants.dart';

import 'package:hebrew_to_amharic/app/utils/lang_util.dart';

import 'package:hebrew_to_amharic/app/utils/shared_prefrence.dart';

import 'package:sizer/sizer.dart';

import 'app/routes/app_pages.dart';

late String selectedLocale;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// INIT HIVE BOXES

//  await AppHiveService.instance.initHiveBoxes();

  await PreferenceUtils.init();

  selectedLocale = LanUtil.getSelecctedLanguage();

  await Future.delayed(
      const Duration(milliseconds: 500)); // Add a one-second delay here

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        ///locale translations

        translations: MainTranslations(),
        locale: Locale(
          selectedLocale,
        ),

        title: Constants.appTtitle,

        initialRoute: AppPages.INITIAL,

        debugShowCheckedModeBanner: false,

        getPages: AppPages.routes,

        defaultTransition: Transition.native,

        theme: AppTheme.light,

        builder: (context, child) {
          final MediaQueryData data = MediaQuery.of(context);

          return MediaQuery(
            data: data.copyWith(textScaler: const TextScaler.linear(0.7)),
            child: child!,
          );
        },
      ),
    ),
  );
}
