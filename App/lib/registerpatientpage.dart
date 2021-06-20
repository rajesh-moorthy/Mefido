import 'package:mefido/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:mefido/loginpage.dart';
import 'package:dropdown_search/dropdown_search.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  DateTime date = DateTime.now();
  String gendervalue = 'Gender';
  int selectedCountry, selectedState, selectedCity;
  List cityList = [], countryList = [], stateList = [];

  Future getCountries() async {
    var url = APIUrls.getCountries;
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        countryList = jsonData;
      });
      print(countryList);
    }
  }

  Future getStates(int id) async {
    var url = APIUrls.getStatesbyCountry + id.toString();
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        stateList = jsonData;
      });
      print(stateList);
    }
  }

  Future getTowns(int id, String cityFilter) async {
    var url = APIUrls.getTownsbyState + id.toString();
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        cityList = jsonData;
      });
      print(cityList);
    }
  }

  Future myFuture;

  TextEditingController nameController = TextEditingController();
  TextEditingController fathusbController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confpasswordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getCountries();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Mefido'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Register Patient',
                    style: TextStyle(fontSize: 14),
                  )),
              //Patient Name
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Patient Name',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              //FAther / Husband Name
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: fathusbController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Father / Husband Name',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                  child: Row(children: <Widget>[
                Expanded(
                    flex: 5,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        child: DropdownButton(
                          value: selectedCountry,
                          isExpanded: true,
                          hint: Text("Select Country"),
                          icon: Icon(Icons.keyboard_arrow_down, size: 22),
                          underline: Container(
                            height: 2,
                            color: Colors.grey.shade400,
                          ),
                          items: countryList?.map((countryList) {
                                return new DropdownMenuItem(
                                  value: countryList['countryId'] ?? 0,
                                  child: new Text(
                                      countryList['countryName'] ?? ''),
                                );
                              })?.toList() ??
                              [],
                          onChanged: (value) {
                            //Do something with this value

                            setState(() {
                              selectedCountry = value;
                              stateList = null;
                              getStates(selectedCountry);
                            });
                          },
                        ))),
                Expanded(
                    flex: 5,
                    child: Container(
                        padding: EdgeInsets.all(10),
                        // child:
                        // DropdownSearch(
                        //     mode: Mode.BOTTOM_SHEET,
                        //     maxHeight: 300,
                        //     items: countryList?.map((ctry) {
                        //           return DropdownMenuItem(
                        //             value: ctry['countryId'] ?? 0,
                        //             child: new Text(
                        //                 ctry['countryName'] ?? 'Select Country'),
                        //           );
                        //         })?.toList() ??
                        //         [],
                        //     label: "Select Country",
                        //     onChanged: print,
                        //     selectedItem: "Select Country",
                        //     showSearchBox: true,
                        //     searchBoxDecoration: InputDecoration(
                        //         border: OutlineInputBorder(),
                        //         contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                        //         labelText: "Search a country"),
                        //     popupTitle: Container(
                        //       height: 50,
                        //       decoration: BoxDecoration(
                        //         color: Theme.of(context).primaryColorDark,
                        //         borderRadius: BorderRadius.only(
                        //             topLeft: Radius.circular(20),
                        //             topRight: Radius.circular(20)),
                        //       ),
                        //       child: Center(
                        //         child: Text('Select Country',
                        //             style: TextStyle(
                        //                 fontSize: 24,
                        //                 fontWeight: FontWeight.bold,
                        //                 color: Colors.white)),
                        //       ),
                        //     ),
                        //     popupShape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.only(
                        //             topLeft: Radius.circular(24),
                        //             topRight: Radius.circular(24)))),
                        child: DropdownButton(
                          value: selectedState,
                          isExpanded: true,
                          hint: Text("Select State"),
                          icon: Icon(Icons.keyboard_arrow_down, size: 22),
                          underline: Container(
                            height: 2,
                            color: Colors.grey.shade400,
                          ),
                          items: stateList?.map((stateList) {
                                return DropdownMenuItem(
                                  value: stateList['stateId'] ?? 0,
                                  child: new Text(
                                      stateList['stateName'] ?? 'Select State'),
                                );
                              })?.toList() ??
                              [],
                          onChanged: (value) {
                            //Do something with this value
                            setState(() {
                              selectedState = value;
                              cityList = null;
                              getTowns(selectedState, "All");
                            });
                          },
                        ))),
              ])),
              Container(
                padding: const EdgeInsets.all(8),
                width: deviceWidth * 0.50,
                child: DropdownButton(
                  value: selectedCity,
                  isExpanded: true,
                  hint: Text("Select City"),
                  icon: Icon(Icons.keyboard_arrow_down, size: 22),
                  underline: Container(
                    height: 2,
                    color: Colors.grey.shade400,
                  ),
                  items: cityList?.map((cityList) {
                        return DropdownMenuItem(
                          value: cityList['cityId'] ?? 0,
                          child: new Text(cityList['village'] ?? 'Select City'),
                        );
                      })?.toList() ??
                      [],
                  onChanged: (value) {
                    //Do something with this value
                    setState(() {
                      selectedCity = value;
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: deviceWidth * 0.50,
                child: DropdownSearch(
                    mode: Mode.BOTTOM_SHEET,
                    maxHeight: 300,
                    items: cityList,
                    label: "Custom BottomShet mode",
                    onChanged: print,
                    selectedItem: "Brazil",
                    showSearchBox: true,
                    searchBoxDecoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.fromLTRB(12, 12, 8, 0),
                        labelText: "Search a country"),
                    popupTitle: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                      ),
                      child: Center(
                        child: Text('Country',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      ),
                    ),
                    popupShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24)))),
              ),
              //Birth date and Age
              Container(
                  child: Row(children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      textAlign: TextAlign.left,
                      controller: dateofbirthController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        border: UnderlineInputBorder(
                          // borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));
                        final format = new DateFormat('dd-MMM-yyyy');
                        dateofbirthController.text = format.format(date);
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      textAlign: TextAlign.left,
                      controller: ageController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Age',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                        border: UnderlineInputBorder(
                          // borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            width: 1,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(5),
                      ),
                    ),
                  ),
                )
              ])),
              Container(
                padding: const EdgeInsets.all(8),
                width: deviceWidth * 0.50,
                child: DropdownButton<String>(
                  value: gendervalue,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down, size: 22),
                  underline: Container(
                    height: 2,
                    color: Colors.grey.shade400,
                  ),
                  items: <String>['Gender', 'Male', 'Female', 'Others']
                      .map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    //Do something with this value
                    setState(() {
                      gendervalue = value;
                    });
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.left,
                  controller: confpasswordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                    border: UnderlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(5),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  children: <Widget>[
                    Expanded(flex: 3, child: Text('')),
                    Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red)))),
                          // textcolor: colors.white,
                          // color: colors.blue,
                          child: Text('Register'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                            // print(nameController.text);
                            // print(passwordController.text);
                          },
                        )),
                    Expanded(flex: 3, child: Text(''))
                  ],
                ),
              ),
            ])));
  }
}
