import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/commons/my_info.dart';
import 'package:flutter_covid_dashboard_ui/commons/opaque_image.dart';

import 'package:flutter_covid_dashboard_ui/styleguide/text_style.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: <Widget>[
                      OpaqueImage(
                        imageUrl: "assets/images/anand.png",
                      ),
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                              MyInfo(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ListView(children: [
                    Container(
                      padding: const EdgeInsets.only(
                          top: 50, left: 10.0, right: 10.0),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Whoami",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            "- Anand Magar ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "“No one in the brief history of computing has ever written a piece of perfect software. It’s unlikely that you’ll be the first.”",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "- 127.0.0.1 ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "28.019408, 82.488199",
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 40),
                          Text(
                            "Skills",
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Fluter",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff44CAF5),
                            currentValue: 40,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "HTML",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xffE96228),
                            currentValue: 50,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "CSS",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff149BD4),
                            currentValue: 50,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "JavaScript",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xffEFD81D),
                            currentValue: 40,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Jquery",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff183353),
                            currentValue: 30,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Linux",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff00C700),
                            currentValue: 40,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "nodeJs",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff70BB51),
                            currentValue: 20,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 20),
                          Text(
                            "PS",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          FAProgressBar(
                            size: 20.0,
                            progressColor: Color(0xff23CDF7),
                            currentValue: 40,
                            borderRadius: 30,
                            backgroundColor: Colors.grey.shade300,
                            animatedDuration: Duration(milliseconds: 3000),
                            maxValue: 100,
                          ),
                          SizedBox(height: 50),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://www.facebook.com/anand.budha.7");
                                  },
                                  child: Image.asset(
                                      "assets/images/facebook.png",
                                      width: 60),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://www.instagram.com/anand_mgar/");
                                  },
                                  child: Image.asset(
                                      "assets/images/instagram.png",
                                      width: 60),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    launch("https://twitter.com/anand60903029");
                                  },
                                  child: Image.asset(
                                      "assets/images/twitter.png",
                                      width: 60),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://www.linkedin.com/in/anand-magar-65a9841ab");
                                  },
                                  child: Image.asset(
                                      "assets/images/linkdin.png",
                                      width: 60),
                                ),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://www.youtube.com/channel/UCK9k3556Wvr7nn_wZerJKQg");
                                  },
                                  child: Image.asset(
                                      "assets/images/youtube.png",
                                      width: 60),
                                ),
                                SizedBox(width: 20),
                                Image.asset("assets/images/snap.png",
                                    width: 60),
                                SizedBox(width: 20),
                                InkWell(
                                  onTap: () {
                                    launch(
                                        "https://www.pinterest.com/anandmagar020/boards/");
                                  },
                                  child: Image.asset(
                                      "assets/images/pintrest.png",
                                      width: 60),
                                ),
                                SizedBox(width: 50),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
