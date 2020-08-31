import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('World Time App'),
        backgroundColor: Colors.blue[1000],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 130, 0, 0),
        child: Column(
          children: <Widget> [
            Container(
              padding: EdgeInsets.fromLTRB(30, 120, 0, 0),
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/Location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit location'),
              ),
            ),
            SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66,
                    ),
                  ),
                ),
              ],
            ),
        ),
      );
  }
}
