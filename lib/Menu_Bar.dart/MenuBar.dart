// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siren24/ForAPI/apicalling.dart';
import 'package:siren24/GoogleMaps/HomeOffline.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/MyWallet/MyWallet.dart';
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
                            width: 50,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.black,
                              ),
                              Text(
                                '10.2',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Hours online',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
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
                                '30 KM',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total Distance',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   width: 5.w,
                        // ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.speed,
                                color: Colors.black,
                              ),
                              Text(
                                '20',
                                style: TextStyle(
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Total Jobs',
                                style: TextStyle(
                                  color: Color(0xFF242E42),
                                  fontSize: 15.sp,
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
              padding: const EdgeInsets.only(left: 15, top: 15),
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
                          width: 15,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 20.sp,
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
                  //         width: 15,
                  //       ),
                  //       Text(
                  //         'My Wallet',
                  //         style: TextStyle(
                  //           fontSize: 20.sp,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   onTap: () {
                  //     setState(
                  //       () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => MyWallet(),
                  //           ),
                  //         );
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
                          width: 15,
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      history_data = await ApiCaller().historydata() ;
                      setState(() {
                        Navigator.pushReplacementNamed(context, History.id);
                      });
                    },
                  ),
                  // ListTile(
                  //   title: Row(
                  //     children: [
                  //       Image.asset(
                  //         'UIAssets/notification.png',
                  //         color: Color(0xFFD8D8D8),
                  //         scale: 1,
                  //       ),
                  //       SizedBox(
                  //         width: 15,
                  //       ),
                  //       Text(
                  //         'Notifications',
                  //         style: TextStyle(
                  //           fontSize: 20.sp,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   onTap: () {
                  //     setState(
                  //       () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => Notifications(),
                  //           ),
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/Vehicle.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Vehicle Management',
                          style: TextStyle(
                            fontSize: 20.sp,
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
                              builder: (context) => VehicleManagement(),
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
                  //         'UIAssets/gift.png',
                  //         color: Color(0xFFD8D8D8),
                  //         scale: 1,
                  //       ),
                  //       SizedBox(
                  //         width: 15,
                  //       ),
                  //       Text(
                  //         'Invite Friends',
                  //         style: TextStyle(
                  //           fontSize: 20.sp,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  //   onTap: () {
                  //     setState(
                  //       () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(
                  //             builder: (context) => InviteFriends(),
                  //           ),
                  //         );
                  //       },
                  //     );
                  //   },
                  // ),
                  ListTile(
                    title: Row(
                      children: [
                        Image.asset(
                          'UIAssets/settings.png',
                          color: Color(0xFFD8D8D8),
                          scale: 1,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 20.sp,
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
                          width: 15,
                        ),
                        Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      String x = await ApiCaller().logout() ;
                      setState(() {
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
