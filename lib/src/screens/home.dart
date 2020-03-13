import 'package:emcs/src/screens/mainsidedrawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    /* Widget imageCarousel=Container(
      height: 400.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          'assets/images/shock.jpg',
          'assets/images/danger.jpg',
          'assets/images/shock2.jpg',
          'assets/images/shock3.jpg',
          'assets/images/shock.png',
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds:1000),
      ),
    ); */

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MainSideDrawer(),
      body: Carousel(
        boxFit: BoxFit.cover,
        images: [
          'assets/images/shock.jpg',
          'assets/images/danger.jpg',
          'assets/images/shock2.jpg',
          'assets/images/shock3.jpg',
          'assets/images/shock.png',
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds:1000),
      ),
      extendBody: true,
    );
  }

}