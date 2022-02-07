import 'dart:async';
// import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:siren24/signup/signup.dart';

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
          body: Stack(
            // clipBehavior: Clip.none,
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.3,
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
                top: MediaQuery.of(context).size.height*0.27 - 85,
                child: Padding(
                  padding: EdgeInsets.fromLTRB( MediaQuery.of(context).size.width*0.05,  10, MediaQuery.of(context).size.width*0.05, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.5,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.04,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(40, 20, 40,10),
                          child: Text('Phone Verification',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: Color(0xff242A37),
                            ),),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 40,10),
                          child: Text('Enter your OTP code here',
                          style: TextStyle(
                            fontSize: 20,
                          ),),
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        //Pin Code
                        SizedBox(
                          height: 200,
                          width: width,
                          child: Padding(
                            padding: const EdgeInsets.all(50.0),
                            child: PinCodeTextField(
                              animationType: AnimationType.none,
                              appContext: context,
                              length: 4,
                              onChanged: (value){
                                print(value);
                                setState(() {
                                  _currentText = value ;
                                });
                              },
                              textStyle: const TextStyle(
                                fontSize: 40,
                              ),
                              showCursor: false,
                              keyboardType: TextInputType.number,
                              pinTheme: PinTheme(
                                activeColor: Color(0xffD8D8D8),
                                inactiveColor: Color(0xffD8D8D8),
                                selectedColor: Color(0xffD8D8D8),
                                borderWidth: 5,
                                fieldWidth: 80,
                              ),
                            ),
                          ),
                        ),

                        //Verify Button
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 30),
                          child: GestureDetector(
                            onTap: () {
                              if ( _currentText == '1234')
                                {
                                  setState(() {
                                    Navigator.pushReplacementNamed(context, SignupPage.id);
                                  });
                                }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                // color: _currentText.length != 4 ? Color(0xff242A37):Color(0xffFFD428),
                                color: _currentText.length != 4 ? Color(0x80FFD428):Color(0xffFFD428),
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
                                      color: _currentText.length != 4 ? Colors.white : Color(0xff242A37),
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
    );
  }
}
