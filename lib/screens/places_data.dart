import 'package:flutter/material.dart';

class PlaceData extends StatefulWidget {
  @override
  _PlaceDataState createState() => _PlaceDataState();
}

class _PlaceDataState extends State<PlaceData> {
  List<Data> data = [
    Data(placeName: "DANG", total: 886, male: " 715 ", female: "  171 "),
    Data(placeName: "DHANKUTA", total: 44, male: "38 ", female: "6"),
    Data(placeName: "TANAHU", total: 329, male: "  268 ", female: "  61 "),
    Data(placeName: "ILAM", total: 97, male: "  89 ", female: "  8"),
    Data(placeName: "LAMJUNG", total: 293, male: " 235  ", female: "  58 "),
    Data(placeName: "PYUTHAN", total: 464, male: " 415 ", female: "  314 "),
    Data(placeName: "KAILALI", total: 1744, male: " 1249 ", female: "  495 "),
    Data(placeName: "BHAKTAPUR", total: 724, male: " 426 ", female: "  298 "),
    Data(placeName: "SYANGJA", total: 353, male: " 304 ", female: "  49 "),
    Data(placeName: "ROLPA", total: 90, male: " 75 ", female: "  15 "),
    Data(placeName: "DOTI", total: 1004, male: " 689 ", female: "  315 "),
    Data(placeName: "BAGLUNG", total: 314, male: " 272 ", female: "  42 "),
    Data(placeName: "SUNSARI", total: 1092, male: " 842 ", female: "  250 "),
    Data(placeName: "RAUTAHAT", total: 1918, male: " 1751 ", female: "  167 "),
    Data(placeName: "MAHOTTARI", total: 1403, male: " 1245 ", female: "  158 "),
    Data(placeName: "RUPANDEHI", total: 1375, male: " 945 ", female: "  430 "),
    Data(
        placeName: "KATHMANDU", total: 6917, male: " 4631 ", female: "  2286 "),
    Data(placeName: "LALITPUR", total: 939, male: " 521 ", female: "  418 "),
    Data(placeName: "DHANUSA", total: 1816, male: " 1516 ", female: "  300 "),
    Data(placeName: "RUKUM EAST", total: 17, male: " 13 ", female: "  4"),
    Data(placeName: "PARSA", total: 2486, male: " 1936 ", female: "  550 "),
    Data(placeName: "ACHHAM", total: 934, male: " 731 ", female: "  203 "),
    Data(
        placeName: "NAWALPARASI EAST",
        total: 593,
        male: " 466 ",
        female: "  127 "),
    Data(placeName: "SINDHULI", total: 93, male: " 79 ", female: "  14 "),
    Data(placeName: "CHITAWAN ", total: 1061, male: " 638 ", female: "  423 "),
    Data(
        placeName: "SINDHUPALCHOK ", total: 115, male: " 80 ", female: "  35 "),
    Data(placeName: " DOLAKHA ", total: 86, male: " 59 ", female: "  27 "),
    Data(placeName: " SURKHET ", total: 842, male: " 644 ", female: "  198 "),
    Data(placeName: " SURKHET ", total: 842, male: " 644 ", female: "  198 "),
    Data(
        placeName: " NAWALPARASI WEST ",
        total: 273,
        male: " 212 ",
        female: "  61 "),
    Data(placeName: " NUWAKOT  ", total: 97, male: " 80 ", female: "  17 "),
    Data(placeName: " KASKI ", total: 499, male: " 352 ", female: "  147 "),
    Data(placeName: " UDAYAPUR ", total: 139, male: " 102 ", female: "  37 "),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Total cases in nepal"),
      ),
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(data.length, (index) {
          return Card(
            margin: EdgeInsets.all(8),
            elevation: 5.0,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    data[index].placeName,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    data[index].total.toString(),
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Male: " + data[index].male,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    "Female: " + data[index].female,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class Data {
  String placeName;
  String male;
  String female;
  int total;

  Data({this.placeName, this.female, this.male, this.total});
}
