import 'package:flutter/material.dart';
import 'package:world_time_app/pages/World_Time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getWorldTime() async {
    WorldTime worldTime = new WorldTime(location:'Johannesburg', flag: 'assets/rsa.jpg', url: 'Africa/Johannesburg');
    await worldTime.getTime();
    print(worldTime.time);
  }
  @override
  void initState(){
    super.initState();
    getWorldTime();
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
    );
  }
}
