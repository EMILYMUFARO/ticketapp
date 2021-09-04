import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'create.dart';
import 'savedTickets.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  Login createState() => Login();
}

class Login extends State<LoginPage> {
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Create"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CreateTicket()));
      },
    );
    Widget continueButton = TextButton(
      child: Text("View"),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SavedTickets()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Do you want to CREATE or VIEW tickets ?"),
      actions: [
        cancelButton,
        continueButton,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        alignLabelWithHint: true,
                      ),
                      textAlign: TextAlign.center),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(25),
                    color: Colors.redAccent,
                    child: Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 200, 0, 50),
                  ),
                  Container(
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: 'SIGN UP',
                                style: new TextStyle(
                                    // decoration: TextDecoration.underline,
                                    color: Colors.redAccent,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()));
                                  })
                          ]),
                        )
                      ],
                    ),
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
