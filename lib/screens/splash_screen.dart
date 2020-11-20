import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lstrv_app/screens/homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:3),
            ()=>Navigator.push(
            context, MaterialPageRoute(builder: (context)=> HomePage())));//Timer

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height:350.0,
                width: 350.0,
                decoration:BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/img/bihar6.jpg'),
                    fit:BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              SpinKitRipple(color: Colors.deepOrange),
            ]
        )
    );
  }
}
