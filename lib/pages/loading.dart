import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:world_clock/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async {
    WorldTime worldTime = WorldTime( location: 'India', flag : 'tri_colour.png', url : 'Asia/Kolkata');
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, "/home",  arguments: {
     'location' : worldTime.location,
     'flag' : worldTime.flag,
     'time' : worldTime.time,
      'isDayTime' : worldTime.isDayTime
    });
    
  }
  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.black,
          size: 80.0,
        ),
      )
    );
  }
}
