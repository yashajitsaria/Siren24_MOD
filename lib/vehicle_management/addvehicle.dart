// ignore_for_file: prefer_const_constructors, unused_field, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddVehicle extends StatefulWidget {
  const AddVehicle({Key? key}) : super(key: key);
  static String id = 'add vehicle';

  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  final List<String> addOns = [];

  @override
  Widget build(BuildContext context) {
    TextEditingController lisencePlate = TextEditingController();
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Add a new Ambulance',
            style: TextStyle(
              fontFamily: 'SF UI Display',
              fontSize: 21.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 45.sp,
                child: TextFormField(
                  controller: lisencePlate,
                  decoration: InputDecoration(
                    // hintText: 'LISENCE PLATE',
                    label: Text(
                      'LISENCE PLATE',
                      style: TextStyle(
                        color: Color(0xFFBEC2CE),
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                ),  
              ),
            ),
          ],
        ),
      ),
    );
  }
}
