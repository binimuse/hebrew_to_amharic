import 'dart:io';

import 'package:hebrew_to_amharic/app/services/constants.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as pathProvider;

class AppHiveService {
  late Box<dynamic> userAuthBox;

  AppHiveService._privateConstructor();

  static final AppHiveService _instance = AppHiveService._privateConstructor();

  static AppHiveService get instance => _instance;

  /// OPEN HIVE BOXES
  initHiveBoxes() async {
    /// REGISTER HIVE ADAPTERS
    await initHiveAdapters();

    userAuthBox = await Hive.openBox<dynamic>(Constants.userAuthBoxKey);
  }

  Future<void> initHiveAdapters() async {
    //INIT HIVE
    Directory directory = await pathProvider.getApplicationSupportDirectory();
    Hive.init(directory.path);

    // REGISTER ADAPTERS
    //  Hive.registerAdapter(UserAuthModelAdapter());
  }
}
