import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:musestar/pages/Views/camera.dart';
import 'package:musestar/pages/Views/home.dart';
import 'package:musestar/pages/Views/profile.dart';
import 'package:musestar/pages/Views/search.dart';
import 'package:musestar/pages/Views/settings.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

int i=0;

  Widget GetReqView(){
    if(i==0){
      return Home();
    }
    else if(i==1){
      return Search();
    }
    
    else if(i==2){
      return Camera();
    }
    
    else if(i==3){
      return Profile();
    }
    
    else if(i==4){
      return Settings();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GetReqView(),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.search, size: 30),
            Icon(Icons.camera, size: 40),
            Icon(Icons.account_circle, size: 30),
            Icon(Icons.settings, size: 30),
          ],
        onTap: (index) {
          print("Index = $index");
          setState(() {
            i = index;
          });
        },
        animationDuration: Duration(milliseconds: 300),
        height: 50,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}