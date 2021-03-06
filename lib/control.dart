import 'package:explore_flutter/aboutApp.dart';
import 'package:explore_flutter/homePage.dart';
import 'package:explore_flutter/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_screen.dart';



class Control extends StatefulWidget {
  @override
  _ControlState createState() => _ControlState();
}
class _ControlState extends State<Control> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      drawer: DrawerCodeOnly(),
    );
  }
}


class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Drawer(

      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),

          ListTile(
            title: Text('Home'),
            onTap: () {

              //  Navigator.of(context).pushReplacementNamed('/homePage');
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new HomePage()));


              // Navigator.pop(context);
            },
          ),

          ListTile(
            title: Text('Profile'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new ProfilePage()));
            },
          ),

          ListTile(
            title: Text('About App'),
            onTap: () {
              // Update the state of the app.
              // ...
              Navigator.pop(context);
              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new AboutApp()));
            },
          ),


          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Update the state of the app.
              // ...
              //Navigator.pop(context);
             // SystemChannels.platform.invokeMethod('SystemNavigator.pop');
//              Navigator.of(context).pop();
//              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new Exp()));
//              Navigator.push(context, new MaterialPageRoute(builder: (context)=>new AboutApp()));
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Exp()),
                    (Route<dynamic> route) => false,
              );



            },
          ),



        ],
      ),
    );
  }
}


