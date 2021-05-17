import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  DateTime date = DateTime.now();
  String dropdownValue = 'Gender';

  TextEditingController emailcontroller = TextEditingController();
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
                Container(
                    height: 600,
                    width: 800,
                    decoration: BoxDecoration(),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                          textAlign: TextAlign.left,
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(fontSize: 16),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                width: 1,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(16),
                          ),
                        ),
                      ),
                      Container(
                          height: 50,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.red)))),
                            // textcolor: colors.white,
                            // color: colors.blue,
                            child: Text('Reset Password'),
                            onPressed: () {
                              print(emailcontroller.text);
                            },
                          )),
                    ]))
              ],
            )));
  }
}
