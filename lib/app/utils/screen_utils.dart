// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';

class ScreenUtil {
  static DeviceType getDeviceType() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    return data.size.shortestSide < 600 ? DeviceType.phone : DeviceType.tablet;
  }

  bool isPhone() {
    final data = MediaQueryData.fromView(WidgetsBinding.instance.window);
    DeviceType deviceType =
        data.size.shortestSide < 600 ? DeviceType.phone : DeviceType.tablet;
    if (deviceType == DeviceType.tablet) {
      return false;
    }

    return true;
  }
}

enum DeviceType {
  phone,
  tablet,
}
