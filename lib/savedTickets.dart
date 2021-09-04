import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SavedTickets(),
  ));
}

class SavedTickets extends StatefulWidget {
  @override
  Saved createState() => Saved();
}

class Saved extends State<SavedTickets> {
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
      body: Center(
        child: Text(
          'NO SAVED TICKETS',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
