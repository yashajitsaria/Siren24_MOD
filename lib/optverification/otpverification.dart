import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);
  static String id = 'OtpVerification' ;

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {

  TextEditingController textEditingController = TextEditingController();
  late StreamController<ErrorAnimationType> errorController;
  bool hasError = false;
  String currentText = "";

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width ;
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context) ;
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: 200,
            width: width,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
