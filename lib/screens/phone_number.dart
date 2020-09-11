import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  List<Data> numbers = [
    Data(place: " Dhangadhi Upamahanagarpalika ", number: "091524281"),
    Data(place: " Kailali ", number: "091524281"),
    Data(place: " Far-west Sub Regional Hospital ", number: "051521993"),
    Data(place: " Amargadhi Nagarpalika  ", number: "051521993"),
    Data(place: " Narayani Sub Regional Hospital  ", number: "051521993"),
    Data(place: "  Birgunj Mahanagarpalika ", number: "051521993"),
    Data(place: "  Parsa ", number: "051521993"),
    Data(
        place: " Gajendra Narayan Singh Sagarmatha Zonal Hospital ",
        number: "031520155"),
    Data(place: " Rajbiraj Nagarpalika ", number: "031520155"),
    Data(place: "  Saptari", number: "031520155"),
    Data(place: " Janakpur Zonal Hospital ", number: "041520133"),
    Data(place: " Janakpur Upamahanagarpalika ", number: "041520133"),
    Data(place: "Dhanusha  ", number: "041520133"),
    Data(place: "Lumbini Zonal Hospital  ", number: "071540200"),
    Data(place: " Butwal Upamahanagarpalika ", number: "071540200"),
    Data(place: "Rupandehi  ", number: "071540200"),
    Data(place: " Rapti Zonal Hospital ", number: "082521624"),
    Data(place: "  Tulsipur Upamahanagarpalika", number: "082521624"),
    Data(place: " Dang ", number: "082521624"),
    Data(place: "  Bheri Zonal Hospital", number: "081520120"),
    Data(place: "  Nepalgunj Upamahanagarpalika", number: "081520120"),
    Data(place: " Banke ", number: "081520120"),
    Data(place: "  Rapti Sub-Regional Hospital", number: "023541235"),
    Data(place: "Ghorahi Upamahanagarpalika,Dang  ", number: "023541235"),
    Data(place: "Shree Birendra Hospital  ", number: "023541235"),
    Data(place: " Kathmandu Mahanagarpalika,Kathmandu ", number: "023541235"),
    Data(place: " Bir Hospital ", number: "014221119"),
    Data(place: " Kathmandu Mahanagarpalika,Kathmandu ", number: "014221119"),
    Data(place: " Civil Service Hospital ", number: "014107000"),
    Data(place: "Kathmandu Mahanagarpalika,Kathmandu", number: "014107000"),
    Data(place: " PAHS ", number: "015522295"),
    Data(place: "  Lalitpur Mahanagarpalika,Lalitpur", number: "015522295"),
    Data(place: " Pokhara Health Science Academy ", number: "061522674"),
    Data(place: "  Pokhara Lekhnath Mahanagarpalika,Kaski", number: "061522674"),
    Data(place: " Dhaulagiri Zonal Hospital ", number: "068520188"),
    Data(place: " Baglung Nagarpalika,Baglung ", number: "068520188"),
    Data(place: "Koshi Zonal Hospital ", number: "021530103"),
    Data(place: "Biratnagar Mahanagarpalika,Morang ", number: "021530103"),
    Data(place: "Mechi Zonal Hospital ", number: "023520172"),
    Data(place: "Bhadrapur Nagarpalika,Jhapa ", number: "023520172"),
    Data(place: " ", number: "025525555"),
    Data(place: "B.P Koirala Institute of Health Sciences ", number: "025525555"),
    Data(place: " Dharan Upamahanagarpalika,Sunsari", number: "025525555"),
    Data(place: "Mid-Western Regional Hospital ", number: "083520200"),
    Data(place: "Birendranagar Nagarpalika,Surkhet ", number: "083520200"),
    Data(place: " Bharatpur Hospital ", number: "056527959"),
    Data(place: "Bharatpur Mahanagarpalika,Chitawan  ", number: "056527959"),
    Data(place: " Bhaktapur Nagarpalika,Bhaktapur ", number: "016610798"),
    Data(place: "  Karnali Academy of Health Science", number: "015525322"),
    Data(place: "Chandannath Nagarpalika,Jumla  ", number: "015525322"),
    Data(place: "Dhulikhel Hospital  ", number: "011490497"),
    Data(place: "Dhulikhel Nagarpalika ", number: "011490497"),
    Data(place: "Dhulikhel Nagarpalika ,Kabhrepalanchok ", number: "011490497"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("COVID-19 Hub Hospitals in Nepal"),),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: numbers.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                child: Padding(
                  padding: EdgeInsets.all(20),  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      
                      Text(
                        numbers[index].place,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),  
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () =>
                                  launch("tel:${numbers[index].number}"),
                              child: Icon(Icons.phone,
                                  size: 35, color: Colors.green)),
                          Text(
                            numbers[index].number,
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                      
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
  String place;
  String number;

  Data({this.place, this.number});
}

// child: Center(child: Text('Entry ${entries[index]}')),
