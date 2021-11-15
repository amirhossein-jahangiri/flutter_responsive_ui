import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contains search box and setting icon for home screen (header)

class SearchBoxWithSettingIcon extends StatelessWidget {
  const SearchBoxWithSettingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        // search box
        Expanded(
          flex: 5,
          child: SearchBox(),
        ),

        // settings icon
        Expanded(
          child: SettingIcon(),
        ),
      ],
    );
  }
}

