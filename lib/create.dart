import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateTicket extends StatefulWidget {
  const CreateTicket({Key? key}) : super(key: key);

  @override
  Create createState() => Create();
}

class Create extends State<CreateTicket> {
  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("SAVED ! "),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(50),
            child: Text(
              'FILL IN THE TICKET BELOW .',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'First Name'),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Last Name')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Company Name')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Branch Name')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Address')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(decoration: InputDecoration(labelText: 'City')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Region')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], decoration: InputDecoration(labelText: 'Ticket Number')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], decoration: InputDecoration(labelText: 'Urgent Level')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Assignment Status')),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Problem Description')),
                  SizedBox(
                    height: 100.0,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(20),
                    color: Colors.blue,
                    child: Text(
                      'SAVE',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
