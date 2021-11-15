import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

// this widget contain search box widget for home screen (header_

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier! * 2,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.widthMultiplier! * 10,
        vertical: SizeConfig.heightMultiplier! * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(SizeConfig.heightMultiplier! * 2),
        ),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          border: InputBorder.none,
          labelText: AppConstants.searchHere,
        ),
      ),
    );
  }
}
