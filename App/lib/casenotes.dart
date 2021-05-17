import 'package:flutter/material.dart';
import 'package:mefido/loginpage.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CaseNotePage extends StatefulWidget {
  @override
  _CaseNotePageState createState() => _CaseNotePageState();
}

class _CaseNotePageState extends State<CaseNotePage> {
  TextEditingController caseNoteController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mefido'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Text("Case Notes", textAlign: TextAlign.center),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 10,
                    controller: caseNoteController,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      hintText: 'Case Notes',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                      filled: true,
                      fillColor: Colors.white70,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 1,
                          style: BorderStyle.none,
                        ),
                      ),
                      contentPadding: EdgeInsets.all(16),
                    ),
                  ),
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Container(
                        height: 50,
                        width: 100.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red)))),
                          // textcolor: colors.white,
                          // color: colors.blue,
                          child: Text('Login'),
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
                    // flatbutton(
                    Container(
                        height: 50,
                        width: 100.0,
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                      side: BorderSide(color: Colors.red)))),
                          // textcolor: colors.white,
                          // color: colors.blue,
                          child: Text('Login'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                            // print(nameController.text);
                            // print(passwordController.text);
                          },
                        ))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                )),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    ); //forgot password screen
                  },
                  child: Text('Prescription / Tests'),
                ),
              ],
            )));
  }
}
