import 'package:flutter/material.dart';
import '/core/app_export.dart';

class AppRoutes {
  static const String home = '/';

  static Map<String, WidgetBuilder> get routes {
    return {
      home: HomeScreen.builder,
    };
  }
}
