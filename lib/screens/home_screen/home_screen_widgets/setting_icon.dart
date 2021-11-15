import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains setting icon with black container for home screen portrait mode (header)

class SettingIcon extends StatelessWidget {
  const SettingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(SizeConfig.heightMultiplier! * 3),
          )),
      alignment: Alignment.center,
      padding: EdgeInsets.all(SizeConfig.heightMultiplier! * 1),
      child: Icon(
        Icons.settings,
        size: SizeConfig.imageSizeMultiplier! * 6,
        color: Colors.white,
      ),
    );
  }
}
