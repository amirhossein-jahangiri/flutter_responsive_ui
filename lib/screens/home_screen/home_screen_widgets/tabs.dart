import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains tabs widget for home screen

class Tabs extends StatelessWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              top: SizeConfig.heightMultiplier! * 1.5,
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(SizeConfig.heightMultiplier! * 3),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              AppConstants.lessons,
              style: StyleConfig.homeScreenBtnTabsStyle(),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 1.5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(SizeConfig.heightMultiplier! * 3),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              AppConstants.myClasses,
              style: StyleConfig.homeScreenBtnTabsStyle(),
            ),
          ),
        ),
      ],
    );
  }
}
