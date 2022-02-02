// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, empty_catches, unused_local_variable, unused_import, avoid_print, unused_element, unused_field

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:siren24/State/location.dart';
import 'package:siren24/signup/signup.dart';
import 'package:geolocator/geolocator.dart';

class SetupGPSLocations extends StatefulWidget {
  const SetupGPSLocations({Key? key}) : super(key: key);
  static String id = 'setup_gps_locations';

  @override
  _SetupGPSLocationsState createState() => _SetupGPSLocationsState();
}

class _SetupGPSLocationsState extends State<SetupGPSLocations> {

  Future<void> _updatePosition() async{
    Position pos = await determinePosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 90,
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
          GestureDetector(
            onTap: () {
              _updatePosition();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              padding: EdgeInsets.symmetric(vertical: 12),
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
              onPressed: () {
                setState(() {
                  Navigator.pushReplacementNamed(
                    context,
                    SignupPage.id,
                  );
                });
              },
              // onPressed: () async {
              //   try {
              //     // final location = await context.read(locationProvider.future);
              //     LocationData userLocation = await location.getLocation();
              //     // userCoordinates = Coordinates(
              //     //     userLocation.latitude, userLocation.longitude);
              //     // useradd = await getAddress(userCoordinates);
              //   } catch (e) {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       SnackBar(
              //         content: Text('e'),
              //       ),
              //     );
              //   }
              // },
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
