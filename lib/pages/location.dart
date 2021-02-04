import 'package:flutter/material.dart';
import 'package:world_clock/services/world_time.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  String currentTime = 'Loading...';
  void setupWorldTime() async {
    WorldTime worldTime = WorldTime( location: 'India', flag : 'tri_colour.png', url : 'Asia/Kolkata');
    await worldTime.getTime();
    print(worldTime.time);
    setState(() {
      currentTime = worldTime.time;
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
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Text(currentTime),
      ),
    );
  }
}
