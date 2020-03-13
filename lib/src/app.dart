import 'package:emcs/src/screens/conservation_tips.dart';
import 'package:emcs/src/screens/dashboard.dart';
import 'package:emcs/src/screens/home.dart';
import 'package:emcs/src/screens/maindrawer.dart';
import 'package:emcs/src/screens/mainsidedrawer.dart';
import 'package:emcs/src/screens/notification.dart';
import 'package:emcs/src/screens/photos.dart';
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ECMS',
      home: LoginScreen(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (context)=> HomePage(),
        '/DashBoard': (context)=> DashBoard(),
        '/Notification': (context)=> Notifications(),
        '/ConservationTips': (context)=> ConservationTips(),

      },
    );
  }
}