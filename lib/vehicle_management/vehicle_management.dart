// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:siren24/vehicle_management/addvehiclebutton.dart';
import 'package:siren24/vehicle_management/listviewbuilder.dart';
import 'package:flutter/material.dart';

class VehicleManagement extends StatelessWidget {
  const VehicleManagement({Key? key}) : super(key: key);
  static String id = 'VehicleManagement';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F8FA),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.06,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Vehicle Management',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xff242A37),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListViewvm(),
          AddVehicleButton(),
        ],
      ),
    );
  }
}
