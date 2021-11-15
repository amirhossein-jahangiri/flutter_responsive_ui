import 'package:flutter/material.dart';
import 'package:responsive_ui/index.dart';

class RouteConfig {
  static Map<String, Widget Function(BuildContext)> route = {
    RouteConstants.WELCOME_SCREEN: (context) =>  WelcomeScreen(),
    RouteConstants.HOME_SCREEN: (context) =>  HomeScreen(),
  };
}