// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siren24/ForAPI/apicalling.dart';
import 'package:siren24/GoogleMaps/HomeOffline.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/MyWallet/MyWallet.dart';
import 'package:siren24/documents/documentpage.dart';
import 'package:siren24/global/globalvariables.dart';
import 'package:siren24/history/history.dart';
import 'package:siren24/signup/signin.dart';
import 'package:siren24/vehicle_management/vehicle_management.dart';

import 'Settings/Settings.dart';

class MenuBar extends StatefulWidget {
  static String id = 'menu_bar';
  const MenuBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: () => Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFFD428),
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5.h,
                        top: 5.h,
                        left: 5.w,
                        right: 5.w,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          // Image.asset(
                          //   'UIAssets/dp.png',
                          //   scale: 0.75,
                          // ),
                          Container(
                            height: 40.h,
                            width: 40.w,
                            child: Image.network(userdata['profile_img'],
                            fit: BoxFit.fill,),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                userdata['name'],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),

                              //*********************************************************************************//

                              //Gold Member
                              // Container(
                              //   decoration: BoxDecoration(
                              //     borderRadius:
                              //         BorderRadius.all(Radius.circular(25)),
                              //     color: Colors.white,
                              //   ),
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(7),
                              //     child: Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceEvenly,
                              //       children: [
                              //         Icon(
                              //           Icons.star_rounded,
                              //           color: Color(0xFFFFD428),
                              //           size: 15,
                              //         ),
                              //         Text(
                              //           'Gold Member',
                              //           style: TextStyle(
                              //             color: Color(0xFFFFD428),
                              //             fontSize: 15,
                              //           ),
                              //         )
                              //       ],
                              //     ),
                              //   ),
                              // ),

                              //*********************************************************************************//

                            ],
                          ),
                          SizedBox(
                            width: 30.h,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.black,
                              ),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 17.h,
                                child: Expanded(
                                  child: Center(
                                    child: Text(
                                      'Hours online',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF242E42),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // width: 2.w,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.black,
                              ),
                              Text(
                                '0 KM',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 17.h,
                                child: Expanded(
                                  child: Center(
                                    child: Text(
                                      'Total Distance',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF242E42),
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.black,
                              ),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                height: 17.h,
                                child: Expanded(
                                  child: Center(
                                    child: Text(
                                      'Total Jobs',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xFF242E42),
                                        fontSize: 12.sp,
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.w, top: 5.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/home.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Home',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async{

                      userdata = await ApiCaller().user_profile() ;
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeOffline(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  // ListTile(
                  //   title: Row(
                  //     children: [
                  //       Image.asset(
                  //         'UIAssets/wallet.png',
                  //         color: Color(0xFFD8D8D8),
                  //         scale: 1,
                  //       ),
                  //       SizedBox(
                  //         width: 10.w,
                  //       ),
                  //       Expanded(
                  //         child: Text(
                  //           'My Wallet',
                  //           overflow: TextOverflow.fade,
                  //           style: TextStyle(
                  //             fontSize: 17.sp,
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   onTap: () {
                  //     setState(
                  //       () {
                  //         Navigator.pushReplacementNamed(context, MyWallet.id);
                  //       },
                  //     );
                  //   },
                  // ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/History.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'History',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {

                      setState(() async{
                        // print(history_data) ;
                        history_data = await ApiCaller().historydata() ;
                        print(history_data);
                        Navigator.pushReplacementNamed(context, History.id);
                      });
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/notification.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Notifications',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifications(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/Vehicle.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Vehicle Management',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      ambulance_details = await ApiCaller().get_ambulance() ;
                      print(ambulance_details) ;
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VehicleManagement(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/ID contact.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Document Management',
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      // ambulance_details = await ApiCaller().get_ambulance() ;
                      // print(ambulance_details) ;
                      setState(
                            () {
                          Navigator.pushReplacementNamed(context, DocumentsUpload.id);
                        },
                      );
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/gift.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          'Invite Friends',
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 17.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InviteFriends(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/settings.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Settings',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/logout.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Text(
                            'Logout',
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      FirebaseMessaging.instance.unsubscribeFromTopic(phonenumber);
                      String x = await ApiCaller().logout() ;
                      setState(() {
                        firsttimechecker = 0;
                        history_data  = [];
                        ambulance_details = [] ;
                        userdata = {} ;
                        print("done") ;
                        print(x) ;
                        Navigator.pushReplacementNamed(context, SignIn.id);
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
