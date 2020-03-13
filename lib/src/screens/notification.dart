import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NotificationsState();
  }
}

class NotificationsState extends State<Notifications> {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notification'),
        ),
        body: Text('Notification loading...'),
      );
  }
   
   Future getData() async{
     var url = '';
     http.Response response = await http.get(url);
      var data = jsonDecode(response.body);
      //print(data.toString());
      Text('Loading notifications...');
   }

   @override
   void initState(){
     getData();
   }
}