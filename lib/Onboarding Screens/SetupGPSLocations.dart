// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:siren24/ForAPI/apicalling.dart';
import 'package:siren24/signup/signupmod.dart';

class SetupGPSLocations extends StatefulWidget {
  const SetupGPSLocations({Key? key}) : super(key: key);
  static String id = 'setup_gps_locations';

  @override
  _SetupGPSLocationsState createState() => _SetupGPSLocationsState();
}

class _SetupGPSLocationsState extends State<SetupGPSLocations> {
  String name = " " ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.15,
          ),
          Image.asset(
            'UIAssets/enable your location.png',
            scale: 1.1,
          ),
          SizedBox(
            height: 54,
          ),
          Text(
            'Enable Your Location',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  'Choose your location to start find the',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'request around you.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 42,
          ),
          GestureDetector (
            onTap: () async {
              // final String names = await ApiCaller().user_profile();

              setState(() {

                // name = names ;
                // print(name) ;
                //Update Ambulance
                // Future<String> x = ApiCaller().updatelocation(21.3244593, 72.0000101);
                // print(x.toString()) ;

                //getprofile
                // ApiCaller().addambulance("TR01 KK 9999", "61e2b1e569a5c49180d4ee7c", "ALS", "cooc", "nice", "oxygen");
                // ApiCaller().user_profile();

                Navigator.pushReplacementNamed(
                  context,
                  SignupPage.id,
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              padding:EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: Color(0xFFFFD428),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  'USE MY LOCATION',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 36,
          ),
          Center( 
            child: TextButton(
              child: Text(
                'Skip for now',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFFBEC2CE),
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
