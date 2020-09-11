import 'package:flutter/material.dart';
export 'stats_grid.dart';

class StatsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.28,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text("Total Data",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            ),
            Flexible(
              child: Row(
                children: <Widget>[
                  _buildStatCard('Total Cases', '47236', Color(0xff6462F3),
                      Color(0xff6ACAE2)),

                  _buildStatCard(
                      'Deaths', '300', Color(0xffff8993), Color(0xfffec180)),
                ],
              ),
            ),
            Flexible(
              child: Row(
                children: <Widget>[
                  _buildStatCard('Recovered', '30677', Color(0xffA364F3),
                      Color(0xffF1BECF)),
                  _buildStatCard('Total Infected ', '16259', Color(0xff5E72EB),
                      Color(0xff86E3CE)),
                  _buildStatCard('PCR Test ', '777563', Color(0xffF13498),
                      Color(0xffFF899E)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _buildStatCard(
      String title, String count, Color color, Color color2) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
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
            colors: [color, color2],
          ),

          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),

            
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
