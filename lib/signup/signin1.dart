import 'package:siren24/history/history.dart';
import 'package:siren24/vehicle_management/vehicle_management.dart';
import 'package:flutter/material.dart';
import 'package:siren24/signup/signup.dart';

class SignInn extends StatefulWidget {
  const SignInn({Key? key}) : super(key: key);
  static String id = 'SignInn' ;
  @override
  _SignInnState createState() => _SignInnState();
}

class _SignInnState extends State<SignInn> {
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
          resizeToAvoidBottomInset: false,
          body: Container(
            color: const Color(0xffF7F8FA),
            child: Stack(
              clipBehavior: Clip.none,
              children: [

                //background stack
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

                //Login Card
                Positioned(
                  top: MediaQuery.of(context).size.height*0.3 - 85,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB( MediaQuery.of(context).size.width*0.05,  10, MediaQuery.of(context).size.width*0.05, 10),

                    //Decoration for login card
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      height: MediaQuery.of(context).size.height*0.4,
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
                        children: [

                          //Text
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                40, 30, 100, 40),
                            child: RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  fontSize: 45,
                                  color: Color(0xff242A37),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Login ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'with your phone number',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //Phone Number text form field
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: 60,
                              child: TextFormField(
                                cursorColor: const Color(0xffFFD428),
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      width: 2,
                                      color: Color(0xffEFEFF4),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      width: 2,
                                      color: Color(0xffEFEFF4),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              setState(() {
                                Navigator.pushReplacementNamed(context, SignupPage.id);
                                print("1");
                              });
                              print("1");
                            },
                            child: Container(
                              height: 100,
                              width: 100,
                              color: Colors.blue,
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
    );
  }
}
