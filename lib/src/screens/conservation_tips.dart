import 'package:flutter/material.dart';

class ConservationTips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConservationTipsState();
  }
}

class ConservationTipsState extends State<ConservationTips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conservation Tips'),
      ),
      body: Text('Conservation Tips loading..'),
    );
  }
}