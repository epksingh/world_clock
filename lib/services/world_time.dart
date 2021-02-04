
import 'dart:convert';

import 'package:http/http.dart';

class WorldTime {
  
  String location;
  String flag;
  String url;
  String time;
  
  WorldTime({this.location,  this.flag, this.url});
  
  Future<void> getTime() async {
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      String dateTime = data['utc_datetime'];
      String offset = data['utc_offset'].substring(1,3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    }catch(e){
      print('caught exception - $e');
      time = 'Unable to load time';
    }
  }
}