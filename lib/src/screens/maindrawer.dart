import 'package:flutter/material.dart';
import 'dashboard.dart';

class MainDrawer extends StatelessWidget {    
  Widget build(context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color> [
                    Colors.blue,
                    Colors.blueAccent,
                  ]
                )
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30.0, bottom: 20.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        /* image: DecorationImage(
                           image: Image.file(
                            'lib/src/photos/RZM.jpg'
                          ) ,
                          fit: BoxFit.fill,
                        ), */
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
                  ],
                )
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                                ListTile(
                leading: Icon(
                  Icons.person,
                ),
                selected: true,
                title: Text('DashBoard', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed('DashBoard().routeName');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                ),
                title: Text('Notification', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                subtitle: Text('News', 
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                ),
                title: Text('History', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(
                  Icons.card_giftcard,
                ),
                title: Text('Rewards', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(
                  Icons.image,
                ),
                title: Text('Conservation Tips', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: null,
              ),
              ListTile( 
                leading: Icon(
                  Icons.settings,
                ),
                title: Text('Setting', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text('Log Out', 
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                onTap: null,
              ),
                  ],
                ),
              ),
            ),
              
          ]
        ),
      );
  }
}
//FireStore ID : ecms-f4679