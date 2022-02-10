// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:siren24/GoogleMaps/HomeOffline.dart';
import 'package:siren24/GoogleMaps/HomePickUp.dart';
import 'package:siren24/GoogleMaps/homeonline.dart';
import 'package:siren24/GoogleMaps/mapsforuse.dart';
import 'package:siren24/Invite%20Friends/InviteFriends.dart';
import 'package:siren24/Menu_Bar.dart/MenuBar.dart';
import 'package:siren24/Menu_Bar.dart/Notifications.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Profile.dart';
import 'package:siren24/Menu_Bar.dart/Settings/ProfileEdit.dart';
import 'package:siren24/Menu_Bar.dart/Settings/profileeditpage.dart';
import 'package:siren24/Menu_Bar.dart/Settings/Settings.dart';
import 'package:siren24/MyWallet/MyWallet.dart';
import 'package:siren24/MyWallet/PaymentMethod.dart';
import 'package:siren24/Onboarding%20Screens/OnboardingScreens.dart';
import 'package:siren24/bookingdetails/bookingdetails.dart';
import 'package:siren24/history/HistoryDetails.dart';
import 'package:siren24/optverification/otpverification.dart';
import 'package:siren24/signup/signin.dart';
import 'package:siren24/vehicle_management/addvehiclebutton.dart';
// import 'package:siren24/signup/signup.dart';
// import 'package:siren24/vehicle_management/addvehicle.dart';
import 'package:siren24/vehicle_management/addvehiclepage.dart';
import 'package:siren24/vehicle_management/vehicle_management.dart';
import 'GoogleMaps/HomeOffline.dart';
import 'Onboarding Screens/SetupGPSLocations.dart';
import 'package:siren24/splashscreen/splashscreen.dart';
import 'history/history.dart';
import 'package:siren24/signup/signupmod.dart';

// ['name','dob','age','gender','profile_img','address']
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
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        OnboardingScreens.id: (context) => OnboardingScreens(),
        SetupGPSLocations.id: (context) => SetupGPSLocations(),
        SignupPage.id: (context) => SignupPage(),
        SignIn.id: (context) => SignIn(),
        OtpVerification.id: (context) => OtpVerification(),
        HomeOffline.id: (context) => HomeOffline(),
        Path_Navigate.id: (context) => Path_Navigate(
              currentlocation: LatLng(19.032499, 73.066484),
              destinationlocation: LatLng(19.0508, 73.0684),
            ),
        HomePickUp.id: (context) => HomePickUp(),
        History.id: (context) => History(),
        BookingDetails.id: (context) => BookingDetails(),
        Settings.id: (context) => Settings(),
        Profile.id: (context) => Profile(),
        ProfileEdit.id: (context) => ProfileEdit(),
        ProfileEditPage.id: (context) => ProfileEditPage(),
        VehicleManagement.id: (context) => VehicleManagement(),
        AddVehiclePage.id: (context) => AddVehiclePage(),
        AddVehicleButton.id: (context) => AddVehicleButton(),
        // AddVehicle.id: (context) => AddVehicle(),
        // Notifications.id: (context) => Notifications(),
        // InviteFriends.id: (context) => InviteFriends(),
        // MyWallet.id: (context) => MyWallet(),
        // PaymentMethod.id: (context) => PaymentMethod(),
        // AddVehicleDetails.id: (context) => AddVehicleDetails(),
      },
    );
  }
}
