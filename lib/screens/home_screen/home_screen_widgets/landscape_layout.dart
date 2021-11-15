import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains landscape mode for home screen

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      alignment: Alignment.topCenter,
      heightFactor: 0.75,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(SizeConfig.heightMultiplier! * 3),
          ),
          color: Colors.amberAccent,
        ),
        child: Column(
          children: <Widget>[
            // this widget contains user profile image and name, search box and icon
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 2.0 * SizeConfig.heightMultiplier!,
                  right: 2.0 * SizeConfig.heightMultiplier!,
                  top: 1.0 * SizeConfig.heightMultiplier!,
                ),
                child: Row(
                  children: <Widget>[
                    // profile image and profile name
                    ProfileImageWithProfileName(),

                    // search box
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: SizeConfig.heightMultiplier! * 9,
                        child: const SearchBox(),
                      ),
                    ),

                    // icon
                    Icon(
                      Icons.blur_on,
                      size: SizeConfig.imageSizeMultiplier! * 8,
                    ),
                  ],
                ),
              ),
            ),

            // question title and setting icon
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.widthMultiplier! * 5,
                  bottom: SizeConfig.heightMultiplier! * 1.5,
                ),
                child: Row(
                  children: const <Widget>[
                    // question ti`tle
                    Expanded(
                      flex: 4,
                      child: QuestionTitle(),
                    ),

                    Spacer(),

                    // setting icon
                    SettingIcon(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
