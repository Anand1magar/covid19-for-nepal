

import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/styleguide/text_style.dart';

class TwoLineIteam extends StatelessWidget {
  final String firstText, secondText;

  const TwoLineIteam({Key key, @required this.firstText, @required this.secondText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(firstText,style: titleStyle),
        Text(secondText, style: subTitleStyle,)
      ],
    );
  }
}
