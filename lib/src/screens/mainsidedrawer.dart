import 'package:emcs/src/screens/dashboard.dart';
import 'package:emcs/src/screens/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class MainSideDrawer extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.blue,
                  Colors.green,
                ],
              )
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Material(
                    elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(50.0,),),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset('lib/src/photos/RZM.jpg', width: 80, height: 80,),
                    ),
                  ),
                  Text('User',
                    style: TextStyle(
                      fontSize: 15.0, 
                      color: Colors.white
                    ),
                  ),
                  Text('you@example.com',
                    style: TextStyle(
                      fontSize: 15.0, 
                      color: Colors.white
                    ),
                  ),

                ],
              )
            )
          ),
          CustomListTile(Icons.dashboard, 'DashBoard',()=>Navigator.pushNamed(context, '/DashBoard')),
          CustomListTile(Icons.notifications, 'Notification', ()=>{}),
          CustomListTile(Icons.card_giftcard, 'Rewards', ()=>{}),
          CustomListTile(Icons.image, 'ConTips',()=>Navigator.pushNamed(context, '/ConservationTips')),
          CustomListTile(Icons.settings, 'Settings', ()=>{}), 
          CustomListTile(Icons.exit_to_app, 'LogOut', ()=>{}), 
        ],
      )
    );
  }  
  void dash(){
    debugPrint('DashBoard tapped');
  }
}