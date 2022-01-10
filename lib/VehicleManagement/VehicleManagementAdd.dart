// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class VehicleManagementAdd extends StatefulWidget {
  const VehicleManagementAdd({ Key? key }) : super(key: key);
  static String id = 'vehicle_management_add';

  @override
  _VehicleManagementAddState createState() => _VehicleManagementAddState();
}

class _VehicleManagementAddState extends State<VehicleManagementAdd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Add a new Ambulance',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}