import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mefido/prescriptionpage.dart';

class CaseNotePage extends StatefulWidget {
  @override
  _CaseNotePageState createState() => _CaseNotePageState();
}

class _CaseNotePageState extends State<CaseNotePage> {
  TextEditingController caseNoteController = TextEditingController();

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Text("Case Notes", textAlign: TextAlign.center),
                    ),
                    Expanded(
                      child: TextField(),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    maxLines: 20,
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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrescriptionPage()),
                    ); //forgot password screen
                  },
                  child: Text(
                    'Prescription / Tests',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ),
              ],
            )));
  }
}
