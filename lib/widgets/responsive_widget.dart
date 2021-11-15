import 'package:flutter/material.dart';
import 'package:responsive_ui/index.dart';

import 'dart:developer';

class ResponsiveWidget extends StatelessWidget {
  final Widget? portraitLayout;
  final Widget? landscapeLayout;

  const ResponsiveWidget(
      {@required this.portraitLayout, this.landscapeLayout, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isPortrait! && SizeConfig.isMobilePortrait!) {
      return portraitLayout!;
    } else {
      return landscapeLayout!;
    }
  }
}
