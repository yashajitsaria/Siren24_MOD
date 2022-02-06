import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddNewvehicle extends StatefulWidget {
  const AddNewvehicle({Key? key}) : super(key: key);
  static String id = 'AddNewVehivle' ;
  @override
  _AddNewvehicleState createState() => _AddNewvehicleState();
}

class _AddNewvehicleState extends State<AddNewvehicle> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: MediaQuery.of(context).size.height * 0.06,
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                'Add a new Ambulance',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff242A37),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    height: 550,
                    width: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 650,
                    width: 100,
                    color: Colors.green,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: () {
                              print('complete');
                            },
                            child: Container(
                              color: const Color(0xffFFD428),
                              height: MediaQuery.of(context).size.height * 0.10,
                              width: MediaQuery.of(context).size.width,
                              child: const Center(
                                child: Text(
                                  'COMPLETE',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff242A37),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}
