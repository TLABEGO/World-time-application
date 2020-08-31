import 'package:flutter/material.dart';
import 'package:world_time_app/pages/World_Time.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void SetUpWorldTime() async {
    WorldTime instance = new WorldTime(location: 'Johannesburg', flag: 'assets/rsa.jpg', url: 'Africa/Johannesburg');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/Home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState(){
    super.initState();
    SetUpWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Loading page'),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Text('Loading...',
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
