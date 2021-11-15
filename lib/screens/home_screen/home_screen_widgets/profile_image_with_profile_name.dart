import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains profile image and profile name for home screen (header)

class ProfileImageWithProfileName extends StatelessWidget {
  const ProfileImageWithProfileName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // profile image
        const ProfileImage(),
        // profile name
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.widthMultiplier! * 2,
          ),
          child: Text(
            AppConstants.greetingMessage,
            style: StyleConfig
                .homeScreenGreetingMessageStyle(),
          ),
        ),
      ],
    );
  }
}
