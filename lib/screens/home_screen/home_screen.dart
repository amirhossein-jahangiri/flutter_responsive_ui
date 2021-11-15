import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_ui/config/size_config.dart';
import 'package:responsive_ui/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7EC),
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: Colors.amberAccent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // header
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: SizeConfig.isMobilePortrait! ? 0.4 : 0.5,
            //heightFactor: 0.4, // edited
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(SizeConfig.heightMultiplier! * 3),
                ),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  // show tabs
                  FractionallySizedBox(
                    heightFactor: SizeConfig.isMobilePortrait! ? .25 : 0.3,
                    alignment: Alignment.bottomCenter,
                    child: const Tabs(),
                  ),

                  //  portrait and landscape header
                  ResponsiveWidget(
                    portraitLayout: PortraitLayout(),
                    landscapeLayout: LandscapeLayout(),
                  ),
                ],
              ),
            ),
          ),

          // content screen
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.4,
            child: Container(
              color: const Color(0xFFFFF7EC),
            ),
          ),
        ],
      ),
    );
  }
}
