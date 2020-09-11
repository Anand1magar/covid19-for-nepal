import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/widgets/chart_widget.dart';
import 'package:flutter_covid_dashboard_ui/widgets/stats_grid.dart';
import 'places_data.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  List<String> anand = ["Anand", "budha", "maga", "ghorahi", "Dang"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 275,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff303D8B), Color(0xff019CFD)],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80.0, left: 34.0),
                  child: Text(
                    "STATISTICS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                _buildStatistic(context),
              ],
            ),
            SizedBox(height: 35),

            StatsGrid(), //widgets/ stats_grid

            SizedBox(height: 30.0),

            Text("Cases in Map",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),

            Image.asset("assets/images/map.png"),
            SizedBox(height: 30.0),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PlaceData()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                margin: EdgeInsets.symmetric(vertical: 50.0),
                width: 360.0,
                height: 100.0,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Location: Whole Nepal",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Number of infected male and female in \n                  different place",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 4,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xff6495ED), Color(0xff02FC7E)],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }

  Container _buildStatistic(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.only(
          top: 150.0,
          left: 30.0,
          right: 30.0,
        ),
        width: MediaQuery.of(context).size.height,
        height: 240.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Today Data",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Center(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    child: DonutPieChart.withSampleData(),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                _buildStatisticsItem(
                    Color(0xff5E72EB), "Infected      ", "1246"),
                SizedBox(height: 20.0),
                _buildStatisticsItem(Color(0xff57C84D), "Discharge   ", "1818"),
                SizedBox(height: 20.0),
                _buildStatisticsItem(Color(0xffF11D28), "Death          ", "5"),
              ],
            ),
          ],
        ));
  }

  Widget _buildStatisticsItem(Color color, String title, String value) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.label,
            size: 30,
            color: color,
          ),
          SizedBox(width: 23.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
