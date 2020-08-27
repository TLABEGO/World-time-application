import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('World Time App'),
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: <Widget> [
          FlatButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/Location');
            },
            icon: Icon(Icons.edit_location),
            label: Text('Edit location'),
          ),
        ],
      )

      );
  }
}
