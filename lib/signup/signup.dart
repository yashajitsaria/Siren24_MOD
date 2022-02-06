// import 'package:siren24/optverification/otpverification.dart';
// import 'package:siren24/signup/signin.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
// import 'package:dio/dio.dart';
// import 'package:siren24/ForAPI/apicalling.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class SignupPage extends StatefulWidget {
//   const SignupPage({Key? key}) : super(key: key);
//   static String id ='SignUp' ;
//
//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }
//
// class _SignupPageState extends State<SignupPage> {
//
//   String _phoneNumber = "" ;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScopeNode currentFocus = FocusScope.of(context);
//
//         if (!currentFocus.hasPrimaryFocus) {
//           currentFocus.unfocus();
//         }
//       },
//       child: SafeArea(
//         child: Scaffold(
//           resizeToAvoidBottomInset: false,
//           body: Container(
//             color: const Color(0xffF7F8FA),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//
//                 //Sign Up card
//                 Column(
//                   children: [
//                     Center(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 20),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height * 0.6,
//                           width: MediaQuery.of(context).size.width*0.9,
//                           decoration: const BoxDecoration(
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10)),
//                                boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey,
//                                   blurRadius: 15.0,
//                                 ),
//                               ]),
//                           child: Column(
//                             children: [
//
//                               //Sign Up Stack
//                               Stack(
//                                 children: [
//                                   Container(
//                                     decoration: const BoxDecoration(
//                                       color: Color(0xffFFD428),
//                                       borderRadius: BorderRadius.vertical(
//                                           top: Radius.circular(10)),
//                                     ),
//                                     height: MediaQuery.of(context).size.height *
//                                         0.3,
//                                   ),
//                                   Positioned(
//                                     right: 0,
//                                     top: MediaQuery.of(context).size.height *
//                                             0.3 -
//                                         170,
//                                     child: Image.asset(
//                                       'images/img1.png',
//                                       scale: 0.75,
//                                     ),
//                                   ),
//                                   Positioned(
//                                     right: 0,
//                                     top: MediaQuery.of(context).size.height *
//                                             0.3 -
//                                         90,
//                                     child: Image.asset(
//                                       'images/img2.png',
//                                       scale: 0.75,
//                                     ),
//                                   ),
//                                   Positioned(
//                                     left: -18,
//                                     top: MediaQuery.of(context).size.height *
//                                             0.3 -
//                                         90,
//                                     child: Image.asset(
//                                       'images/img3.png',
//                                       scale: 0.75,
//                                     ),
//                                   ),
//
//                                   //Sign Up text
//                                   Padding(
//                                     padding: const EdgeInsets.fromLTRB(
//                                         40, 30, 100, 40),
//                                     child: RichText(
//                                       text: const TextSpan(
//                                         style: TextStyle(
//                                           fontSize: 45,
//                                           color: Color(0xff242A37),
//                                         ),
//                                         children: [
//                                           TextSpan(
//                                             text: "Sign Up ",
//                                             style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                           ),
//                                           TextSpan(
//                                             text: 'with email and phone number',
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.w300),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//
//                               //Bottom half of Sign Up card
//                               Container(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.3,
//                                 decoration: const BoxDecoration(
//                                     color: Colors.white,
//                                     borderRadius: BorderRadius.vertical(
//                                       bottom: Radius.circular(10),
//                                     )),
//                                 child: Column(
//                                   children: [
//
//                                     //Email ID form field
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(30, 30, 30, 10),
//                                       child: SizedBox(
//                                         width: MediaQuery.of(context).size.width*0.8,
//                                         height: 60,
//                                         child: TextField(
//                                           style: const TextStyle(
//                                             fontSize: 22,
//                                             height: 1.5,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                           cursorColor: const Color(0xffFFD428),
//                                           decoration: InputDecoration(
//                                             contentPadding: const EdgeInsets.only(left: 30,right: 20, top: 20, bottom: 20),
//                                             hintText: 'name@example.com',
//                                             hintStyle: const TextStyle(
//                                               // fontSize: 20,
//                                               fontWeight: FontWeight.normal,
//                                               color: Color(0xffBEC2CE),
//                                             ),
//                                             enabledBorder: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(10),
//                                               borderSide: const BorderSide(
//                                                 width: 2,
//                                                 color: Color(0xffEFEFF4),
//                                               ),
//                                             ),
//                                             focusedBorder: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(10),
//                                               borderSide: const BorderSide(
//                                                 width: 2,
//                                                 color: Color(0xffEFEFF4),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//
//                                     //Phone Number text form field
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
//                                       child: SizedBox(
//                                         width: MediaQuery.of(context).size.width*0.8,
//                                         height: 60,
//                                         child: TextField(
//                                           onChanged: (value) {
//                                             setState(() {
//                                               _phoneNumber = value ;
//                                             });
//                                             print(_phoneNumber) ;
//                                           },
//                                           style: const TextStyle(
//                                             fontSize: 22,
//                                             height: 1.5,
//                                             fontWeight: FontWeight.bold,
//                                           ),
//                                           keyboardType: TextInputType.number,
//                                           cursorColor: const Color(0xffFFD428),
//                                           decoration: InputDecoration(
//                                             contentPadding: const EdgeInsets.only(left: 30,right: 20, top: 20, bottom: 20),
//                                             enabledBorder: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(10),
//                                               borderSide: const BorderSide(
//                                                 width: 2,
//                                                 color: Color(0xffEFEFF4),
//                                               ),
//                                             ),
//                                             focusedBorder: OutlineInputBorder(
//                                               borderRadius: BorderRadius.circular(10),
//                                               borderSide: const BorderSide(
//                                                 width: 2,
//                                                 color: Color(0xffEFEFF4),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//
//                                     //Sign Up Button
//                                     Padding(
//                                       padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
//                                       child: GestureDetector(
//                                         onTap: () {
//                                           setState(() {
//                                             var pnumber = int.parse(_phoneNumber) ;
//                                             ApiCaller().sendOtpToPhone(pnumber, "Shivam") ;
//                                             Navigator.pushReplacementNamed(context, OtpVerification.id);
//                                           });
//                                         },
//                                         child: Container(
//                                           decoration: const BoxDecoration(
//                                             color: Color(0xff242A37),
//                                             borderRadius: BorderRadius.all(Radius.circular(10)),
//                                           ),
//                                           width: MediaQuery.of(context).size.width*0.8,
//                                           height: 60,
//                                           child: const Center(
//                                             child: Padding(
//                                               padding: EdgeInsets.all(8.0),
//                                               child: Text(
//                                                 'SIGN UP',
//                                                 style: TextStyle(
//                                                   color: Colors.white,
//                                                   fontWeight: FontWeight.bold,
//                                                   fontSize: 25,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//
//                 SizedBox(
//                   height: MediaQuery.of(context).size.height * 0.15,
//                 ),
//
//                 //To Sign In page
//                 Container(
//                   height: 30,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Already have an account? ',
//                         style: TextStyle(
//                           fontSize: MediaQuery.of(context).size.height > 500
//                               ? 20
//                               : 15,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             Navigator.push(context, MaterialPageRoute(builder: (context)=>SignIn()));
//                           });
//                         },
//                         child: Text(
//                           'Sign In',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: MediaQuery.of(context).size.height > 500
//                                 ? 20
//                                 : 15,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   color: Colors.white,
//                   height: 30,
//                   width: double.infinity,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
