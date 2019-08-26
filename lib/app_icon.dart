import 'dart:io';

import 'package:flutter/services.dart';

enum IconType { Normal, Blue, Red }

class AppIcon {
  static const MethodChannel platform = MethodChannel('appIconChannel');

  static Future<void> setLauncherIcon(IconType icon) async {
    if (!Platform.isIOS) return null;

    String iconName;

    switch (icon) {
      case IconType.Blue:
        iconName = 'Blue';
        break;
      case IconType.Red:
        iconName = 'Red';
        break;
      default:
        iconName = 'Normal';
        break;
    }

    return await platform.invokeMethod('changeIcon', iconName);
  }
}
