import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/commons/two_line_iteam.dart';

class ProfileInfoCard extends StatelessWidget {
  final firstText, secondText, hasImage, imagePath;

  const ProfileInfoCard(
      {Key key,
      this.secondText,
      this.firstText,
      this.hasImage = false,
      this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 12.0,
      child: hasImage
          ? Center(
              child: Image.asset(
                imagePath,
                color: Colors.redAccent,
                height: 30.0,
              ),
            )
          : TwoLineIteam(
              firstText: firstText,
              secondText: secondText,
            ),
    ),
    );
  }
}
