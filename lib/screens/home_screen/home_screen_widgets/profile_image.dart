import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains profile image for home screen (header)

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.pink.shade300,
        borderRadius:
        BorderRadius.all(Radius.circular(SizeConfig.heightMultiplier! * 1)),
      ),
      //alignment: Alignment.center,
      child: Image.asset(
        ImagePathConstants.monica,
        width: SizeConfig.imageSizeMultiplier! * 10,
        height: SizeConfig.imageSizeMultiplier! * 10,
      ),
    );
  }
}
