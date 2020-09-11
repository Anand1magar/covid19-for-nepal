import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/self_assessment.dart';

// import 'package:flutter_covid_dashboard_ui/config/styles.dart';
// import 'package:flutter_covid_dashboard_ui/data/data.dart';
// import 'package:flutter_covid_dashboard_ui/widgets/widgets.dart';
// import 'package:get_it/get_it.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildPreventionTips(screenHeight),
          _buildSympyom(screenHeight),
          _buildYourOwnTest(context, screenHeight),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _buildHeader(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: new DecorationImage(
            image: new AssetImage("./assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Covid-19",
                style: TextStyle(
                    fontSize: 29.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              // Image.asset(
              //   "./assets/images/nepalLog.png",
              //   width: 120.0,
              // ),
            ],
          ),
          SizedBox(height: screenHeight * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Are you feeling sick?',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'If you feel sick with any COVID-19 symptoms, please call or text us immediately for help',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.03),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton.icon(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () => launch("tel: 1133"),
                icon: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                label: Text(
                  "Call Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              FlatButton.icon(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                color: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () => launch("sms:9851255834"),
                icon: Icon(Icons.chat_bubble, color: Colors.white),
                label: Text(
                  "Send SMS",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
  return SliverToBoxAdapter(
    child: Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              " Prevention Tips",
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 200,
                  width: 110.0,
                  child: Column(
                    children: [
                      Image.asset("assets/images/wash hand.png", width: 150.0),
                      SizedBox(height: 10.0),
                      Text(
                        "Wash hand",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  height: 200,
                  width: 145.0,
                  child: Column(
                    children: [
                      Image.asset("assets/images/avoidContact.png",
                          width: 300.0),
                      SizedBox(height: 10.0),
                      Text(
                        "Avoid Contact",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  height: 200,
                  width: 115.0,
                  child: Column(
                    children: [
                      Image.asset("assets/images/donotTouch.png", width: 122.0),
                      SizedBox(height: 10.0),
                      Text(
                        "Don't touch \n   mouth",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  height: 200,
                  width: 115.0,
                  child: Column(
                    children: [
                      Image.asset("assets/images/mask.png", width: 150.0),
                      SizedBox(height: 10.0),
                      Text(
                        "Mask",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 40.0,
                ),
                Container(
                  height: 200,
                  width: 115.0,
                  child: Column(
                    children: [
                      Image.asset("assets/images/coverMouth.png", width: 135.0),
                      SizedBox(height: 17.0),
                      Text(
                        "  Cover \n Mouth",
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

SliverToBoxAdapter _buildSympyom(double screenHeight) {
  return SliverToBoxAdapter(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "   Symptoms of covid-19",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SymptomCard(
                image: "assets/images/fever.png",
                title: "Headache",
                isActive: true,
              ),
              SymptomCard(
                image: "assets/images/caugh.png",
                title: "Headache",
                isActive: true,
              ),
              SymptomCard(
                image: "assets/images/headache.png",
                title: "Headache",
                isActive: true,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.0, vertical: 10.0),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Color(0xFF4056C6).withOpacity(.15),
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Color(0xFFB7B7B7).withOpacity(.16),
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            image,
            width: 110.0,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

SliverToBoxAdapter _buildYourOwnTest(
    BuildContext context, double screenHeight) {
  return SliverToBoxAdapter(
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => SelfAssessment(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],


          color: Colors.orange,


          borderRadius: BorderRadius.circular(20.0),


          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xff6ACAE2), Color(0xff6462F3)],
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Image.asset("assets/images/doctor.png", width: 200.0),
            )),
            Expanded(
              child: Text(
                "Self Assement",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
