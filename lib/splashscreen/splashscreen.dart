// ignore_for_file: use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors, file_names
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:siren24/GoogleMaps/homeOffline.dart';
import 'package:siren24/Onboarding%20Screens/OnboardingScreens.dart';
import 'package:siren24/global/globalvariables.dart';
import 'package:siren24/signup/signin.dart';
import 'package:siren24/signup/signupmod.dart';

import '../main.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'Splash_Screen';
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  startTime() async {
    var _duration = new Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }


  void navigationPage() async{
    bool firstcall = await IsFirstRun.isFirstRun() ;
    if (firstcall == true) {

      Navigator.pushReplacementNamed(context, OnboardingScreens.id);


    } else {
      if(firsttimechecker == 1 )
        {
          Navigator.pushReplacementNamed(context, HomeOffline.id) ;
        }
      else
        {
          Navigator.pushReplacementNamed(
            context,
            SignupPage.id,
          );
        }

    }

  }


  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xffFFD428),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 50,
              right: 0,
              child: Image.asset('images/img1.png',
              scale: 0.55,),
            ),
            Positioned(
              bottom: 0,
              right: -45,
              child: Image.asset('images/img22.png',
              scale: 0.6,),
            ),
            Positioned(
              bottom: 0,
                left: -40,
                child: Image.asset('images/img3.png',
                  scale: 0.8,),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Center(
                child: Text(
                  'Siren24 Driver App',
                  style: TextStyle(
                    color: Color(0xff242A37),
                    fontSize: 70,
                    // fontWeight: FontWeight.w900,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}