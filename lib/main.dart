import 'package:flutter/material.dart';
import 'package:world_time_app/pages/Home.dart';
import 'package:world_time_app/pages/Choose_location.dart';
import 'package:world_time_app/pages/Loading.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => Loading(),
    '/Home': (context) => Home(),
    '/Location': (context) => Location(),
  },
));