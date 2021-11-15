import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains portrait mode for home screen

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      heightFactor: 0.8,
      child: Container(
        padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 3),
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(SizeConfig.heightMultiplier! * 3),
          ),
        ),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[

            // profile image / name , icon and question title
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.heightMultiplier! * 1,
                ),
                child: Column(
                  children: <Widget>[
                    // profile image / name and icon
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          const ProfileImageWithProfileName(),
                          const Spacer(),
                          Icon(
                            Icons.blur_on,
                            size: SizeConfig.imageSizeMultiplier! * 8,
                          ),
                        ],
                      ),
                    ),

                    // title
                    const Expanded(
                      child: QuestionTitle(),
                    ),
                  ],
                ),
              ),
            ),

            // search box and setting icon
            const SearchBoxWithSettingIcon(),
          ],
        ),
      ),
    );
  }
}


