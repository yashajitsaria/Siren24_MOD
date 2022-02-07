// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_element, constant_identifier_names, unused_import

// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:location/location.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class GMapsHomePickUp extends StatefulWidget {
  const GMapsHomePickUp({
    Key? key,
  }) : super(key: key);

  @override
  _GMapsHomePickUpState createState() => _GMapsHomePickUpState();
}

class _GMapsHomePickUpState extends State<GMapsHomePickUp> {
  GoogleMapController? _controller;
  final Set<Marker> _markers = <Marker>{};

  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;

  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  String googleAPIKey = 'AIzaSyASODipwXRfzJNuFRN8lCaQeMnxLXSOvgQ';

  Position? _position;

  @override
  void initState() {
    super.initState();
    polylinePoints = PolylinePoints();

    Geolocator.getPositionStream().listen((p) {
      setState(() {
        _position = p;
      });
    });

    setCustomMarker();
  }

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
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationEnabled: true,
        compassEnabled: true,
        tiltGesturesEnabled: false,
        polylines: _polylines,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            _position?.latitude ?? 0,
            _position?.longitude ?? 0,
          ),
          zoom: 14,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller;
        },
        markers: {
          Marker(
            markerId: MarkerId('driver'),
            position: LatLng(
              _position?.latitude ?? 0,
              _position?.longitude ?? 0,
            ),
          )
        },
      ),
      floatingActionButton: Align(
        alignment: Alignment(0.96, -0.48),
        child: FloatingActionButton.small(
          onPressed: () {
            CameraPosition(
              target: LatLng(
                _position?.latitude ?? 0,
                _position?.longitude ?? 0,
              ),
              zoom: 16,
            );
          },
          child: Icon(Icons.gps_fixed_rounded),
        ),
      ),
    );
  }
}
