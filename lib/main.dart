import 'dart:developer';

import 'package:flutter/material.dart';
import 'index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig.init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: RouteConstants.WELCOME_SCREEN,
              routes: RouteConfig.route,
            );
          },
        );
      },
    );
  }
}
