import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_ui/index.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: WelcomeScreenContentWidget(),
            ),
            Expanded(
              flex: 1,
              child: WelcomeScreenButtonWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeScreenContentWidget extends StatelessWidget {
  const WelcomeScreenContentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          // title
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: SizeConfig.heightMultiplier! * 3.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FittedBox(
                  child: Text(
                    AppConstants.welcomeScreenTitle,
                    textAlign: TextAlign.center,
                    style: StyleConfig.welcomeScreenTitleStyle(),
                  ),
                ),
              ),
            ),
          ),

          // image content
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.heightMultiplier! * 1.0,
              ),
              child:
                  Image.asset(ImagePathConstants.homeImage, fit: BoxFit.fill),
            ),
          ),

          // sub title
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: FittedBox(
                child: Padding(
                  padding:
                      EdgeInsets.only(bottom: SizeConfig.heightMultiplier! * 1),
                  child: Text(
                    AppConstants.welcomeScreenSubTitle,
                    textAlign: TextAlign.center,
                    style: StyleConfig.welcomeScreenSubTitleStyle(),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomeScreenButtonWidget extends StatelessWidget {
  const WelcomeScreenButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(SizeConfig.heightMultiplier! * 4),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed(RouteConstants.HOME_SCREEN);
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(SizeConfig.heightMultiplier! * 4),
                ),
              ),
              constraints: BoxConstraints(
                minHeight: SizeConfig.heightMultiplier! * 7.0,
                maxHeight: SizeConfig.heightMultiplier! * 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Icon(
                      Icons.chevron_left,
                      size: SizeConfig.imageSizeMultiplier! * 6,
                    ),
                  ),

                  Text(
                    AppConstants.getStartedButton,
                    style: StyleConfig.welcomeScreenGetStartedButtonStyle(),
                  ),

                  Expanded(
                    child: Icon(
                      Icons.chevron_right,
                      size: SizeConfig.imageSizeMultiplier! * 6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
