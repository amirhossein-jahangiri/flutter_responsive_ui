import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SizeConfig {
  static double? _screenWidth;
  static double? _screenHeight;
  static double? _blockWidth = 0;
  static double? _blockHeight = 0;

  static bool? isPortrait = true;
  static bool? isMobilePortrait = false;

  static double? textSizeMultiplier;
  static double? imageSizeMultiplier;
  static double? heightMultiplier;
  static double? widthMultiplier;

  static void init(BoxConstraints constraints, Orientation orientation) {
    if(orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if(_screenWidth! < 450) {
        isMobilePortrait = true;
      }
    } else { // orientation == orientation.landscape
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }
    _blockWidth = _screenWidth! / 100;
    _blockHeight = _screenHeight! / 100;


    textSizeMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;


    log('is mobile portrait $isMobilePortrait');
    log('screen width $_screenWidth');
    log('==========================');



  }

}




