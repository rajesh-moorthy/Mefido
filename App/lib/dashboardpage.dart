import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mefido/casenotes.dart';
import 'package:mefido/viewPrescriptionpage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  DateTime date = DateTime.now();
  String dropdownValue = 'Male';
  // Animation<double> _headerScaleAnimation;
  // Future<bool> _goToLogin(BuildContext context) {
  //   return Navigator.of(context)
  //       .pushReplacementNamed('/')
  //       // we dont want to pop the screen, just replace it completely
  //       .then((_) => false);
  // }

  Future<bool> _onWillPop() async {
    // This dialog will exit your app on saying yes
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    //final theme = Theme.of(context);

    return WillPopScope(
        onWillPop: _onWillPop,
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Mefido",
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
            elevation: 10,
            backgroundColor: Colors.blue,
            actions: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.notifications),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.more_vert),
              ),
            ],
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
                    Container(
                        child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                            child: Text('Search Patient'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashboardPage()),
                              );
                              // print(nameController.text);
                              // print(passwordController.text);
                            },
                          ),
                        )),
                        Expanded(
                            child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              side: BorderSide(
                                                  color: Colors.red)))),
                                  // textcolor: colors.white,
                                  // color: colors.blue,
                                  child: Text('Create Patient'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DashboardPage()),
                                    );
                                    // print(nameController.text);
                                    // print(passwordController.text);
                                  },
                                )))
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    )),
                    Container(
                        child: Divider(
                      color: Colors.grey,
                      thickness: 1.5,
                    )),
                    Container(
                      child: Text(
                        'Lined Appointments',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                        child: Row(
                      children: <Widget>[],
                    ))
                  ],
                )),
          ),
          drawer: Drawer(
            child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Image.asset(
                      'assets/images/mefido.png',
                      width: 150,
                      height: 25,
                    ),
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.user),
                    title: Text('Profile'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.calendarAlt),
                    title: Text('Appointments'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person_add_outlined),
                    title: Text('New Patient'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.payments_outlined),
                    title: Text('Payments'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.notesMedical),
                    title: Text('Case Notes'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CaseNotePage()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.prescription),
                    title: Text('Prescription'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrescriptionPage()),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.prescription),
                    title: Text('View Prescription'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.alarm_rounded),
                    title: Text('Medicine Alarm'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(FontAwesomeIcons.signOutAlt),
                    title: Text('Logout'),
                    onTap: () {
                      // Update the state of the app
                      // ...
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ]),
          ),
        )));
  }
}
