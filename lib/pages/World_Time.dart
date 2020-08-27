import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location;
  String time;
  String flag;
  String url;

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    //Make a response
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    //Get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].subString(1,3);

    //Create DateTime object
    DateTime now = DateTime.parse(datetime);
    now.add(Duration(hours: int.parse(offset)));

    //set the time property
    time = now.toString();
  }
} 