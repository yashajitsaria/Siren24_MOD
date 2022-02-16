import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siren24/ForAPI/apicalling.dart';
import 'package:siren24/GoogleMaps/homeOffline.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:siren24/bookingdetails/bookingdetailsafter.dart';
import 'package:siren24/bookingdetails/bookingdetailsbefore.dart';
import 'package:siren24/global/globalvariables.dart';
import 'package:url_launcher/url_launcher.dart';


class EndRide extends StatefulWidget {
  const EndRide({Key? key}) : super(key: key);
  static String id = "EndRide" ;
  @override
  _EndRideState createState() => _EndRideState();
}

String modeOfPayment = 'Online';
bool isCash = false;
class _EndRideState extends State<EndRide> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => SafeArea(
        child: Scaffold(
          drawer: MenuBar(),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Color(0xFFFFD428), size: 24.sp),
            toolbarHeight: 56.h,
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                '#123456',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff242A37),
                ),
              ),
            ),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  clipBehavior: Clip.none,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.h, 20.h),
                    child: Container(
                      height: 485.h,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x809e9e9e),
                            blurRadius: 15.0,
                            // spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //Row 1
                          Container(
                            height: 68.h,
                            width: 375.w,
                            decoration: const BoxDecoration(
                              borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10)),
                              color: Color(0xffF7F7F7),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(16.w, 12.h, 10.w, 12.h),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                    ),
                                    height: 44.h,
                                    width: 44.w,
                                  ),
                                ),
                                Container(
                                  width: 250.w,
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 120.w,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.w, 14.h, 10.w, 10.h),
                                              child: Text(
                                                'Steve Bowen',
                                                style: TextStyle(
                                                  color: Color(0xff242E42),
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.w, 14.h, 5.w, 0.h),
                                              child: Text(
                                                '₹' + '25.00',
                                                style: TextStyle(
                                                  color: Color(0xff242E42),
                                                  fontSize: 17.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0.w, 0.h, 5.w, 0.h),
                                              child: Text(
                                                '2.2 km',
                                                style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Color(0xffBEC2CE),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Container(
                                //   width: 120.w,
                                //   child: Column(
                                //     children: [
                                //       Padding(
                                //         padding: EdgeInsets.fromLTRB(0.w, 14.h, 10.w, 10.h),
                                //         child: Text(
                                //           'Steve Bowen',
                                //           style: TextStyle(
                                //             color: Color(0xff242E42),
                                //             fontSize: 17.sp,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 55.w,
                                // ),
                                // Container(
                                //   child: Column(
                                //     crossAxisAlignment: CrossAxisAlignment.end,
                                //     children: [
                                //       Padding(
                                //         padding: EdgeInsets.fromLTRB(0.w, 14.h, 5.w, 0.h),
                                //         child: Text(
                                //           '\$25.00',
                                //           style: TextStyle(
                                //             color: Color(0xff242E42),
                                //             fontSize: 17.sp,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //       Padding(
                                //         padding: EdgeInsets.fromLTRB(0.w, 0.h, 5.w, 0.h),
                                //         child: Text(
                                //           '2.2 km',
                                //           style: TextStyle(
                                //             fontSize: 15.sp,
                                //             color: Color(0xffBEC2CE),
                                //           ),
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                          Container(
                            color: const Color(0xffEFEFF4),
                            height: 1.h,
                          ),

                          //Row 2
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.w, 19.h, 0.w, 5.h),
                            child: Text(
                              'PICK UP',
                              style: TextStyle(
                                color: Color(0xffBEC2CE),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.w, 0.h, 0, 13.h),
                            child: Text(
                              '7958 Swifit Village',
                              style: TextStyle(
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
                            child: Container(
                              color: const Color(0xffEFEFF4),
                              width: 344.w,
                              height: 1,
                            ),
                          ),

                          //Row 3
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.w, 19.h, 0.w, 5.h),
                            child: Text(
                              'DROP OFF',
                              style: TextStyle(
                                color: Color(0xffBEC2CE),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16.w, 0.h, 0, 13.h),
                            child: Text(
                              '105 William St, Chicago, US',
                              style: TextStyle(
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
                            child: Container(
                              color: const Color(0xffEFEFF4),
                              width: 344.w,
                              height: 1,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.fromLTRB(16.w, 19.h, 0.w, 5.h),
                            child: Text(
                              'ADD ONS',
                              style: TextStyle(
                                color: Color(0xffBEC2CE),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
                            child: Container(
                              color: const Color(0xffEFEFF4),
                              width: 344.w,
                              height: 1,
                            ),
                          ),
                          //Row 4
                          // const Padding(
                          //   padding: EdgeInsets.fromLTRB(20.0, 20, 20, 5),
                          //   child: Text(
                          //     'NOTED',
                          //     style: TextStyle(
                          //       color: Color(0xffBEC2CE),
                          //       fontSize: 16,
                          //       fontWeight: FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                          // const Padding(
                          //   padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                          //   child: Text(
                          //     'Lorem ipsum dolor sit amet, consectetur adipisc elit. Nullam ac vestibulum erat. Cras vulputate auctor lectus at consequat.',
                          //     style: TextStyle(
                          //       fontSize: 25,
                          //     ),
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          //   child: Container(
                          //     color: const Color(0xffEFEFF4),
                          //     width: MediaQuery.of(context).size.width,
                          //     height: 1,
                          //   ),
                          // ),

                          //Row 4
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.0.w, 20.h, 20.w, 5.h),
                            child: Text(
                              'TRIP FARE',
                              style: TextStyle(
                                color: Color(0xffBEC2CE),
                                fontSize: 11.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(20.0.w, 0.h, 20.w, 5.h),
                            child: Container(
                              width: 345.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Online Paid',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                      Text(
                                        'Discount',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                      Text(
                                        'Paid Amount',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '₹' + '15',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                      Text(
                                        '₹' + '15',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                      Text(
                                        '₹' + '15',
                                        style: TextStyle(
                                          fontSize: 17.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(15.w, 0, 15.w, 0),
                            child: Container(
                              color: const Color(0xffEFEFF4),
                              width: 344.w,
                              height: 1,
                            ),
                          ),

                          //Row 5 (Buttons)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // GestureDetector(
                              //   onTap: () {
                              //     setState(() {
                              //       Navigator.pushReplacementNamed(context, BookingDetailsAfter.id);
                              //     });
                              //   },
                              //   child: Padding(
                              //     padding:
                              //     EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 20.h),
                              //     child: Container(
                              //       height: 80.h,
                              //       width: 120.w,
                              //       decoration: const BoxDecoration(
                              //         color: Color(0xffffd428),
                              //         borderRadius:
                              //         BorderRadius.all(Radius.circular(10)),
                              //       ),
                              //       child: Column(
                              //         mainAxisAlignment: MainAxisAlignment.center,
                              //         children: [
                              //           Padding(
                              //             padding:
                              //             EdgeInsets.fromLTRB(0, 5.h, 0, 5.h),
                              //             // child: Image.asset(
                              //             //   'images/call.png',
                              //             //   scale: 0.8,
                              //             //   color: Colors.white,
                              //             // ),
                              //             child: Image.asset('icons/plus.png',color: Colors.white,scale: 1,),
                              //           ),
                              //           Padding(
                              //             padding: EdgeInsets.only(bottom: 10.h),
                              //             child: Text(
                              //               'Accept',
                              //               style: TextStyle(
                              //                   fontSize: 15.sp,
                              //                   fontWeight: FontWeight.bold,
                              //                   color: Colors.white),
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) => AlertDialog(
                                      title: Center(
                                        child: Text('Payment'),
                                      ),
                                      // content: Text('Rs. 350'),
                                      actions: <Widget>[
                                        Center(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Total Amount: ₹ 20'),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Amount already Paid: ₹ 20'),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Mode of Payment - ' + (modeOfPayment = isCash ? 'Cash' : 'Online')),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text('Amount to be Paid: ₹ 0'),
                                              SizedBox(
                                                height: 10,
                                              ),
                                            ],
                                          ),
                                        ),
                                        TextButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                            MaterialStateProperty.resolveWith(
                                                  (states) => Color(0xFFFFD428),
                                            ),
                                          ),
                                          // onPressed: () => Navigator.pop(context, 'OK'),
                                          onPressed: () => Navigator.pushReplacementNamed(context, HomeOffline.id),
                                          child: const Text(
                                            'OK',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(10.w, 20.h, 10.w, 20.h),
                                  child: Container(
                                    height: 80.h,
                                    width: 260.w,
                                    decoration: const BoxDecoration(
                                      color: Color(0xffFF8900),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
                                          child: Image.asset(
                                            'icons/tick.png',
                                            scale: 0.8,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 5.h),
                                          child: Text(
                                            'END RIDE',
                                            style: TextStyle(
                                                fontSize: 25.sp,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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


