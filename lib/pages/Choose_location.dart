import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue[1000],
      appBar: AppBar(
        title: Text('Choose Location'),
        backgroundColor: Colors.blue[1000],
        centerTitle: true,
        elevation: 0,
      ),
    );
  }
}
