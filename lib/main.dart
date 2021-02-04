import 'package:flutter/material.dart';
import 'package:world_clock/pages/choose_location.dart';
import 'package:world_clock/pages/home.dart';
import 'package:world_clock/pages/location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => Location(),
    '/home' : (context) => Home(),
    '/choose_location' : (context) => ChooseLocation()
  },
));


