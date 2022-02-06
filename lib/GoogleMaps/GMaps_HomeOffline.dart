// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_element, unused_local_variable, await_only_futures, prefer_const_literals_to_create_immutables, unused_import, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart' as loc;

class GMapsHomeOffline extends StatefulWidget {
  const GMapsHomeOffline({Key? key}) : super(key: key);

  @override
  _GMapsHomeOfflineState createState() => _GMapsHomeOfflineState();
}

class _GMapsHomeOfflineState extends State<GMapsHomeOffline> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(25.540539431310854, 84.85082954594253),
    zoom: 17,
  );

  late GoogleMapController _googleMapController;
  final Set<Marker> _marker = {};
  late BitmapDescriptor mapMarker;

  late LatLng _currentposition;
  Position? _position;

  void _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);

    setState(() {
      _currentposition = LatLng(position.latitude, position.longitude);
    });
  }

  // final LocationSettings locationSettings = LocationSettings(
  //   accuracy: LocationAccuracy.high,
  //   distanceFilter: 100,
  // );
  // StreamSubscription<Position> positionStream =
  //     Geolocator.getPositionStream(locationSettings: locationSettings)
  //         .listen((Position? position) {
  //   print(
  //     position == null
  //         ? 'Unknown'
  //         : '${position.latitude.toString()}, ${position.longitude.toString()}',
  //   );
  // });

  @override
  void initState() {
    setCustomMarker();
    super.initState();
    Geolocator.getPositionStream().listen((p) {
      setState(() {
        _position = p;
      });
    });
  }

  void setCustomMarker() async {
    mapMarker = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'UIAssets/ic_current.png');
  }

  void _onMapCreated(GoogleMapController controller) {
    _googleMapController = controller;
    setState(() {
      _marker.add(
        Marker(
          markerId: MarkerId('Driver'),
          position: LatLng(25.540539431310854, 84.85082954594253),
          icon: mapMarker,
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
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition),
          );
          // try {
          //   final location = await context.read(locationProvider.future);
          //   LocationData userLocation = await location.getLocation();
          //   // driverCoordinates =
          //   //     Coordinates(userLocation.latitude, userLocation.longitude);
          // } catch (e) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(
          //       content: Text('error'),
          //     ),
          //   );
          // }
        },
        child: Icon(Icons.near_me_outlined),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            _position?.latitude ?? 0,
            _position?.longitude ?? 0,
          ),
          zoom: 14,
        ),
        onMapCreated: _onMapCreated,
        markers: {
          Marker(
            markerId: MarkerId('driver'),
            position: LatLng(
              _position?.latitude ?? 0,
              _position?.longitude ?? 0,
            ),
          )
        },
        polylines: {},
      ),
    );
  }
}
