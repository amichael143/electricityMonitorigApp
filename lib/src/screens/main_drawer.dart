import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget build(context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100.0,
                    height: 100.0,
                    margin: EdgeInsets.only(top: 30.0, bottom: 10.0,),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.lifeandexperiences.com%2Fwp-content%2Fuploads%2F2019%2F07%2Fprofessional-electrician-1024x640.jpg&imgrefurl=https%3A%2F%2Fwww.lifeandexperiences.com%2Fthe-benefits-of-calling-the-professional-electrician%2F&tbnid=f16XUwgYKJHJhM&vet=12ahUKEwj89sGRgI7oAhUO1-AKHY0WDqkQMygJegUIARCdAg..i&docid=iwgm6ipZdY_zNM&w=1024&h=640&q=electrician&ved=2ahUKEwj89sGRgI7oAhUO1-AKHY0WDqkQMygJegUIARCdAg',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  
                  Text('Username',
                    style: TextStyle(
                      fontSize: 20.0, 
                      color: Colors.white,
                    ),
                  ),
                  Text('you@example.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ]
              ),
            ),
          ),
          drawMenu(),
        ],
      ),
    );
  }

  Widget drawMenu(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.centerLeft,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('DashBoard', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('Rewards', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('History', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('Notification', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('Setting', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('Conservation Tips', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
              SizedBox(height: 9.0),
              Text('Feed Back', 
                style: TextStyle(
                  color:Colors.black
                ),
              ),
            ]
        ),
      ),
    );
  }
}

