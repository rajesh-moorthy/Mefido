import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:grouped_checkbox/grouped_checkbox.dart';
// import 'package:flutter/scheduler.dart' show timeDilation;

class PrescriptionPage extends StatefulWidget {
  @override
  _PrescriptionPageState createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  TextEditingController medicineController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  bool _moChecked = false,
      _anChecked = false,
      _evChecked = false,
      _niChecked = false;
  String dropdownValue = 'Select';

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    //double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text('Mefido'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView(
                  //listview
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      height: 30,
                      child: Text(
                        'Prescription',
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 20,
                            fontWeight: FontWeight.bold), //TextStyle
                      ),
                    ),
                    Container(
                        width: deviceWidth * 0.80,
                        child: TextField(
                          textAlign: TextAlign.left,
                          controller: medicineController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Medicine',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 16),
                            filled: true,
                            fillColor: Colors.white70,
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        )),
                    Container(
                      padding: const EdgeInsets.all(8),
                      width: deviceWidth * 0.50,
                      child: DropdownButton<String>(
                        value: dropdownValue,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down, size: 22),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        items: <String>['Select', 'Tab', 'Cap', 'Inj', 'D']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          //Do something with this value
                          setState(() {
                            dropdownValue = value;
                          });
                        },
                      ),
                    ),
                    Container(
                        width: deviceWidth * 0.40,
                        child: TextField(
                          textAlign: TextAlign.left,
                          controller: quantityController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Quantity',
                            hintStyle: TextStyle(
                                color: Colors.grey.shade400, fontSize: 16),
                            filled: true,
                            fillColor: Colors.white70,
                            border: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.none,
                              ),
                            ),
                            contentPadding: EdgeInsets.all(5),
                          ),
                        )),
                    Container(
                      child: Text(
                        'Dosage',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.blue[400],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.platform,
                        title: Text('Morning'),
                        value: _moChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _moChecked = value;
                          });
                        }
                        //secondary: const Icon(Icons.hourglass_empty),
                        ),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.platform,
                        title: Text('Afternoon'),
                        value: _anChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _anChecked = value;
                          });
                        }
                        //secondary: const Icon(Icons.hourglass_empty),
                        ),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.platform,
                        title: Text('Evening'),
                        value: _evChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _evChecked = value;
                          });
                        }
                        //secondary: const Icon(Icons.hourglass_empty),
                        ),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.platform,
                        title: Text('Night'),
                        value: _niChecked,
                        onChanged: (bool value) {
                          setState(() {
                            _niChecked = value;
                          });
                        }
                        //secondary: const Icon(Icons.hourglass_empty),
                        ),
                  ])),
        ) //Padding
        ); //Scaffold
  }
}
