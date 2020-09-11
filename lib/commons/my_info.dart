
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/commons/radial_progress.dart';
import 'package:flutter_covid_dashboard_ui/commons/rounded__images.dart';
import 'package:flutter_covid_dashboard_ui/styleguide/text_style.dart';
class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialProgress(         
               child: RoundedImage(
              imagePath: "assets/images/anand.png",
              size: Size.fromWidth(120.0),
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Anand Magar", style: whiteNameTextStyle),
             
            ],
          ),
          SizedBox(height: 1),
          Text("Flutter Developer", style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 3),),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/location_pin.png",
                width: 20.0,
                color: Colors.white,
              ),
              SizedBox(width: 10),
              Text(
                "Nepal",
                style: whiteSubHeadingTextStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
