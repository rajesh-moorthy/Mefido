import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
// import 'package:intl/intl_browser.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  DateTime date = DateTime.now();
  String gendervalue = 'Male';

  TextEditingController nameController = TextEditingController();
  TextEditingController fathusbController = TextEditingController();
  TextEditingController dateofbirthController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Mefido - SignUp'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign Up',
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
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
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
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
                    items: <String>['Select', 'Male', 'Female', 'Others']
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
                    controller: nameController,
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
                    controller: nameController,
                    keyboardType: TextInputType.text,
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
                    controller: nameController,
                    keyboardType: TextInputType.text,
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
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red)))),
                      // textcolor: colors.white,
                      // color: colors.blue,
                      child: Text('Patient Sign Up'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
              ],
            )));
  }
}
