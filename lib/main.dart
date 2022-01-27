// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Profile.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Settings.dart';
import 'package:siren24/MyWallet/MyWallet.dart';
import 'package:siren24/MyWallet/PaymentMethod.dart';
import 'package:siren24/Onboarding%20Screens/OnboardingScreens.dart';
import 'package:siren24/bookingdetails/bookingdetails.dart';
import 'package:siren24/home_swipeup/home_online_swipeup.dart';
import 'package:siren24/optverification/otpverification.dart';
import 'package:siren24/signup/signin.dart';
import 'package:siren24/signup/signin1.dart';
import 'package:siren24/signup/signup.dart';
import 'package:siren24/vehicle_management/vehicle_management.dart';
import 'Onboarding Screens/SetupGPSLocations.dart';
import 'package:siren24/splashscreen/splashscreen.dart';

import 'history/history.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Siren24());
}

class Siren24 extends StatelessWidget {
  const Siren24({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        initialRoute: InviteFriends.id,
        // initialRoute: HomeSwipeup.id,
        //   initialRoute: History.id,
        // initialRoute: Notifications.id,
        // initialRoute: InviteFriends.id,
        // initialRoute: Settings.id,
        // initialRoute: Profile.id,
        // initialRoute: VehicleManagement.id,
        // initialRoute: MyWallet.id,
      // initialRoute: OtpVerification.id,
        routes: {
          SplashScreen.id: (context) => SplashScreen(),
          OnboardingScreens.id: (context) => OnboardingScreens(),
          SetupGPSLocations.id: (context) => SetupGPSLocations(),
          SignIn.id: (context) => SignIn(),
          OtpVerification.id: (context) => OtpVerification(),
          SignInn.id: (context) => SignInn(),
          SignupPage.id: (context) => SignupPage(),
          HomeSwipeup.id: (context) => HomeSwipeup(),
          History.id: (context) => History(),
          BookingDetails.id: (context) => BookingDetails(),
          Settings.id: (context) => Settings(),
          VehicleManagement.id: (context) => VehicleManagement(),
          Notifications.id: (context) => Notifications(),
          InviteFriends.id: (context) => InviteFriends(),
          Profile.id: (context) => Profile(),
          MyWallet.id: (context) => MyWallet(),
          PaymentMethod.id: (context) => PaymentMethod(),
          // MenuBar.id: (context) => MenuBar(),
        }
    );
  }
}