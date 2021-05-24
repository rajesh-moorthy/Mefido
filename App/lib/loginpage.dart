import 'package:flutter/material.dart';
import 'package:mefido/dashboardpage.dart';
import 'package:mefido/registerpatientpage.dart';
import 'package:mefido/forgotpasswordpage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mefido'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
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
                  children: <Widget>[
                    Image.asset(
                      'assets/images/mefido_fronticon.png',
                      width: 150,
                      height: 150,
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Mefido - Sign in',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 30),
                        )),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        textAlign: TextAlign.left,
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.account_circle_outlined),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
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
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: TextField(
                        obscureText: true,
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock_outline_rounded),
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 16),
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
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage()),
                        ); //forgot password screen
                      },
                      child: Text('Forgot Password'),
                    ),
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
                                  builder: (context) => DashboardPage()),
                            );
                            // print(nameController.text);
                            // print(passwordController.text);
                          },
                        )),
                    Container(
                        child: Text(
                      "Don't have account? Sign up as a",
                      textAlign: TextAlign.center,
                    )),
                    // flatbutton(
                    Container(
                        child: Row(children: <Widget>[
                      Expanded(
                          child: TextButton(
                        // textColor: Colors.blue,
                        child: Text(
                          'Patient',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                          //signup screen
                        },
                      )),
                      Expanded(
                          child: TextButton(
                        // textColor: Colors.blue,
                        child: Text(
                          'Hospital',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                          //signup screen
                        },
                      )),
                      Expanded(
                          child: TextButton(
                        // textColor: Colors.blue,
                        child: Text(
                          'Doctor',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                          //signup screen
                        },
                      )),
                      Expanded(
                          child: TextButton(
                        // textColor: Colors.blue,
                        child: Text(
                          ' Service Provider',
                          style: TextStyle(fontSize: 15),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterPage()),
                          );
                          //signup screen
                        },
                      )),
                    ]))
                  ],
                ))));
  }
}
