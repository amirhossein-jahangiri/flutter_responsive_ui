import 'package:flutter/material.dart';
import 'package:responsive_ui/index.dart';

class StyleConfig {

  // welcome screen
  static TextStyle welcomeScreenTitleStyle() {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: SizeConfig.textSizeMultiplier! * 3.5,
    );
  }

  static TextStyle welcomeScreenSubTitleStyle() {
    return TextStyle(
      fontSize: SizeConfig.textSizeMultiplier! * 2.5,
    );
  }


  static TextStyle welcomeScreenGetStartedButtonStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.textSizeMultiplier! * 2.5,
    );
  }



  // home screen
  static TextStyle homeScreenGreetingMessageStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.textSizeMultiplier! * 2.5,
    );
  }

  static TextStyle homeScreenQuestionTitleStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.textSizeMultiplier! * 3.5,
    );
  }

  static TextStyle homeScreenBtnTabsStyle() { // tabs
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: SizeConfig.textSizeMultiplier! * 2,
    );
  }


}