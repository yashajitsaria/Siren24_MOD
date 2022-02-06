import 'dart:async';
// import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:siren24/signup/signup.dart';
import 'package:siren24/ForAPI/apicalling.dart';
import 'package:siren24/signup/signupmod.dart';

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
  String _currentText = "";

  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width ;
    return ScreenUtilInit(
      builder: ()=> GestureDetector(
        onTap: (){
          FocusScopeNode currentFocus = FocusScope.of(context) ;
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Stack(
              // clipBehavior: Clip.none,
              children: [
                Container(
                  width: 375.w,
                  height: 812.h,
                  color: Colors.white,
                ),
                Container(
                  width: 375.w,
                  height: 271.h,
                  color: const Color(0xffFFD428),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset('images/img1.png',
                          scale: 0.65,),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Image.asset('images/img22.png',
                          scale: 0.75,),
                      ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Image.asset('images/img3.png',
                          scale: 0.83,),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  // top: MediaQuery.of(context).size.height*0.27 - 85,
                  top: 210.h,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        15.w,
                        10.h,
                        15.w,
                        10.h),
                    child: Container(
                      width: 345.w,
                      height: 350.h,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15.0,
                            ),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height*0.04,
                          // ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 30.h, 30.w, 6.h),
                            child: Text('Phone Verification',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 34.sp,
                                color: Color(0xff242A37),
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.w, 7.h, 30.w, 30.h),
                            child: Text('Enter your OTP code here',
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),),
                          ),

                          // SizedBox(
                          //   height: 20,
                          // ),

                          //Pin Code
                          SizedBox(
                            height: 120.h,
                            width: width,
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: PinCodeTextField(
                                animationType: AnimationType.none,
                                appContext: context,
                                length: 6,
                                onChanged: (value){
                                  print(value);
                                  setState(() {
                                    _currentText = value ;
                                  });
                                },
                                textStyle: TextStyle(
                                  fontSize: 30.sp,
                                ),
                                showCursor: false,
                                keyboardType: TextInputType.number,
                                pinTheme: PinTheme(
                                  activeColor: Color(0xffD8D8D8),
                                  inactiveColor: Color(0xffD8D8D8),
                                  selectedColor: Color(0xffD8D8D8),
                                  borderWidth: 5,
                                  fieldWidth: 35.w,
                                ),
                              ),
                            ),
                          ),

                          //Verify Button
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 20.h),
                            child: GestureDetector(
                              onTap: () {
                                if ( _currentText.length == 6)
                                  {
                                    setState(() {
                                      var _otp =int.parse(_currentText) ;
                                      ApiCaller().verifyOtp(_otp) ;
                                      // print("11") ;
                                      // Future <String> x = ApiCaller().updatelocation(21.3244593, 72.0000101) ;
                                      // print(x) ;
                                      // print("2") ;
                                      // if ( x == '1')
                                      // {
                                      //   print("success") ;
                                      // }
                                      // else{
                                      //   print(x) ;
                                      //   print("error") ;
                                      // }
                                      Navigator.pushReplacementNamed(context, SignupPage.id);
                                    });
                                  }
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  // color: _currentText.length != 4 ? Color(0xff242A37):Color(0xffFFD428),
                                  color: _currentText.length != 6 ? Color(0x80FFD428):Color(0xffFFD428),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                width: MediaQuery.of(context).size.width*0.9,
                                height: 60,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'VERIFY NOW',
                                      style: TextStyle(
                                        // color: Colors.white,
                                        color: _currentText.length != 6 ? Colors.white : Color(0xff242A37),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      designSize: const Size(375,812),
    );
  }
}
