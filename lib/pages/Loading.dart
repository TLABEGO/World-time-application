import 'package:flutter/material.dart';
import 'package:world_time_app/pages/World_Time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      //backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text('Loading page'),
        backgroundColor: Colors.blue[1000],
        centerTitle: true,
      ),
      body: Center(
        child: SpinKitFadingCircle(
          itemBuilder: (BuildContext context, int index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: index.isEven ? Colors.red : Colors.green,
              ),
            );
          },
        ),
      ),
    );
  }
}
