// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_element, constant_identifier_names, unused_import

// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
// import 'package:google_directions_api/google_directions_api.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

// const double CAMERA_ZOOM = 16;
// const double CAMERA_TILT = 80;
// const double CAMERA_BEARING = 30;
// const LatLng SOURCE_LOCATION = LatLng(42.747932, -71.167889);
// const LatLng DEST_LOCATION = LatLng(37.335685, -122.0605916);

class GMapsHomePickUp extends StatefulWidget {
  const GMapsHomePickUp({Key? key}) : super(key: key);

  @override
  _GMapsHomePickUpState createState() => _GMapsHomePickUpState();
}

class _GMapsHomePickUpState extends State<GMapsHomePickUp> {
  // late LocationData currentLocation;
  // late LocationData destinationLocation;

  GoogleMapController? _controller;
  final Set<Marker> _markers = <Marker>{};

  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;

  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  String googleAPIKey = 'AIzaSyASODipwXRfzJNuFRN8lCaQeMnxLXSOvgQ';

  // late Location location;

  @override
  void initState() {
    super.initState();
    // location = Location();
    polylinePoints = PolylinePoints();

    // location.onLocationChanged.listen((LocationData cLoc) {
    //   currentLocation = cLoc;
    //   updatePinOnMap();
    // });

    _getCurrentLocation();

    setCustomMarker();
    // setSourceAndDestinationIcons();
    // setInitialLocation();
  }

  // static Stream<Position> getPositionStream(
  //         {LocationSettings? locationSettings}) =>
  //     GeolocatorPlatform.instance
  //         .getPositionStream(locationSettings: locationSettings);

  // StreamSubscription<Position> positionStream =
  //     getPositionStream().listen((Position position) {
  // });

  final startAddressController = TextEditingController();

  // _getAddress() async {
  //   try {
  //     // Places are retrieved using the coordinates
  //     List<Placemark> p = await placemarkFromCoordinates(
  //         _currentPosition.latitude, _currentPosition.longitude);

  //     // Taking the most probable result
  //     Placemark place = p[0];

  //     setState(() {
  //       // Structuring the address
  //       _currentAddress =
  //           "${place.name}, ${place.locality}, ${place.postalCode}, ${place.country}";

  //       // Update the text of the TextField
  //       startAddressController.text = _currentAddress;

  //       // Setting the user's present location as the starting address
  //       _startAddress = _currentAddress;
  //     });
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(25.54056999934392, 84.85095395488331),
    zoom: 14,
    // zoom: CAMERA_ZOOM,
    // tilt: CAMERA_TILT,
    // bearing: CAMERA_BEARING,
    // target: SOURCE_LOCATION,
  );

  late Position _currentPosition;

  _getCurrentLocation() async {
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        _controller!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
      // await _getAddress();
    }).catchError((e) {
      print(e);
    });
  }

//   // Retrieving placemarks from addresses
// List<Location> startPlacemark = await locationFromAddress(_startAddress);
// List<Location> destinationPlacemark = await locationFromAddress(_destinationAddress);

// // Storing latitude & longitude of start and destination location
// double startLatitude = startPlacemark[0].latitude;
// double startLongitude = startPlacemark[0].longitude;
// double destinationLatitude = destinationPlacemark[0].latitude;
// double destinationLongitude = destinationPlacemark[0].longitude;

  // void setSourceAndDestinationIcons() async {
  //   sourceIcon = await BitmapDescriptor.fromAssetImage(
  //     ImageConfiguration(devicePixelRatio: 2.5),
  //     'assets/driving_pin.png',
  //   );

  //   destinationIcon = await BitmapDescriptor.fromAssetImage(
  //     ImageConfiguration(devicePixelRatio: 2.5),
  //     'assets/destination_map_marker.png',
  //   );
  // }

  // void setInitialLocation() async {
  //   currentLocation = await location.getLocation();

  //   destinationLocation = LocationData.fromMap({
  //     "latitude": DEST_LOCATION.latitude,
  //     "longitude": DEST_LOCATION.longitude
  //   });
  // }

  // void setPolylines() async {
  //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
  //     googleAPIKey,
  //     currentLocation.latitude,
  //     currentLocation.longitude,
  //     destinationLocation.latitude,
  //     destinationLocation.longitude,
  //   );
  //   if (result.isNotEmpty) {
  //     result.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
  //     });
  //     setState(() {
  //       _polylines.add(Polyline(
  //           width: 5,
  //           polylineId: PolylineId('poly'),
  //           color: Color.fromARGB(255, 40, 122, 198),
  //           points: polylineCoordinates));
  //     });
  //   }
  // }

  // void showPinsOnMap() {
  //   var pinPosition =
  //       LatLng(currentLocation.latitude, currentLocation.longitude);
  //   var destPosition =
  //       LatLng(destinationLocation.latitude, destinationLocation.longitude);
  //   _markers.add(
  //     Marker(
  //       markerId: MarkerId('sourcePin'),
  //       position: pinPosition,
  //       icon: sourceIcon,
  //     ),
  //   );
  //   _markers.add(Marker(
  //       markerId: MarkerId('destPin'),
  //       position: destPosition,
  //       icon: destinationIcon));
  //   setPolylines();
  // }

  // void updatePinOnMap() async {
  //   CameraPosition cPosition = CameraPosition(
  //     zoom: CAMERA_ZOOM,
  //     tilt: CAMERA_TILT,
  //     bearing: CAMERA_BEARING,
  //     target: LatLng(currentLocation.latitude, currentLocation.longitude),
  //   );
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(cPosition));
  //   setState(() {
  //     var pinPosition =
  //         LatLng(currentLocation.latitude, currentLocation.longitude);

  //     _markers.removeWhere((m) => m.markerId.value == 'sourcePin');
  //     _markers.add(Marker(
  //         markerId: MarkerId('sourcePin'),
  //         position: pinPosition,
  //         icon: sourceIcon));
  //   });
  // }

  void setCustomMarker() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'UIAssets/ic_current.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Driver'),
          position: LatLng(25.540539431310854, 84.85082954594253),
          icon: sourceIcon,
          infoWindow: InfoWindow(
            title: 'Building Name',
            snippet: 'Locality Name, Area, Pincode',
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (currentLocation != null) {
    //   _initialCameraPosition = CameraPosition(
    //     target: LatLng(
    //       currentLocation.latitude,
    //       currentLocation.longitude,
    //     ),
    //     zoom: CAMERA_ZOOM,
    //     tilt: CAMERA_TILT,
    //     bearing: CAMERA_BEARING,
    //   );
    // }

    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        tiltGesturesEnabled: false,
        polylines: _polylines,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller;
          // showPinsOnMap();
        },
        markers: _markers,
      ),
    );
  }
}
