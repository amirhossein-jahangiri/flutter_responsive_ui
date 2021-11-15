import 'package:flutter/material.dart';

import 'package:responsive_ui/index.dart';

class QuestionTitle extends StatelessWidget {
  const QuestionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      AppConstants.whatLearnToday,
      textAlign: TextAlign.left,
      style: StyleConfig.homeScreenQuestionTitleStyle(),
    );
  }
}