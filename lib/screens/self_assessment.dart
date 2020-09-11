import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';

import 'package:flutter_covid_dashboard_ui/widgets/slider_widget.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class SelfAssessment extends StatefulWidget {
  @override
  _SelfAssessmentState createState() => _SelfAssessmentState();
}

class _SelfAssessmentState extends State<SelfAssessment> {
  List<String> gender = ["Male", "Female", "Other"];
  List<String> dryCough = ["yes", "No"];
  final genderSelected = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selft Assesment"),
      ),

      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              lableText("Enter your name"),
              SizedBox(height: 20),
              textField(
                "Enter your name",
              ),


              SizedBox(height: 30.0),

              lableText("Age"),

              SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter your number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.amber,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30.0),

              lableText("Select Gender"),
              SizedBox(height: 20),


              //Create List of String of gender and make final genderSelected = TextEditingController();
              
              DropDownField(
                controller: genderSelected,
                hintText: "Select your Gender",
                enabled: true,
                items: gender,
                onValueChanged: (value) {
                  setState(() {
                    print(value);
                  });
                },
              ),

              SizedBox(height: 30),
              lableText("Enter your phone number"),

              SizedBox(height: 20),

              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter your number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(
                      color: Colors.amber,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),


              SizedBox(height: 30),
              lableText("Address"),

              SizedBox(height: 20),
              textField("Enter your Address"),

              SizedBox(height: 30),
              lableText("Municipality"),


              SizedBox(height: 20),
              textField("Enter your Municipality Name"),
              SizedBox(height: 30),

              SizedBox(height: 30),
              lableText("Temprature :"),
              SizedBox(height: 30),

              SliderWidget(),    //Custome Slider Widgets

              //Radio Buttons

              SizedBox(height: 30),
              lableText("Dry Cough :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Tiredness :"),

              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Difficulty Breathing :"),

              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Chest Pain :"),

              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Pain: :"),

              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Loss of taste or smell :"),

              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Loss of speech movement :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Sore Throat :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Diarrhoea :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Runny Nose :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 30),
              lableText("Nausea :"),
              SizedBox(height: 20),
              buildCustomRadioButton(context),

              SizedBox(height: 50),
                    //Send Button
              Center(
                child: InkWell(
                  onTap: (){
                    
                  },
                                  child: Container(
                    child: Center(
                        child: Text(
                      "Send",
                      style: TextStyle(color: Colors.white, fontSize: 30.0),
                    ),
                    ),
                    width: 170,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.red,

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
                        colors: [Color(0xff6462F3), Color(0xff6ACAE2)],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  // CustomRadioButton

  CustomRadioButton buildCustomRadioButton(BuildContext context) {
    return CustomRadioButton(
      elevation: 0,
      spacing: 1.0,
      // absoluteZeroSpacing: true,
      unSelectedColor: Theme.of(context).canvasColor,
      buttonLables: [
        'Yes',
        'No',
      ],
      buttonValues: [
        "yes",
        "no",
      ],
      buttonTextStyle: ButtonTextStyle(
          selectedColor: Colors.white,
          unSelectedColor: Colors.black,
          textStyle: TextStyle(fontSize: 16)),
      radioButtonValue: (value) {
        print(value);
      },
      selectedColor: Theme.of(context).accentColor,
    );
  }

  Text lableText(String lable) {
    return Text(
      lable,
      style: TextStyle(
        fontSize: 20.0,
      ),
    );
  }

  TextField textField(String title) {
    return TextField(
      decoration: InputDecoration(
        labelText: title,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            color: Colors.amber,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
