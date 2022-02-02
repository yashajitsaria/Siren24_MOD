// ignore_for_file: file_names, prefer_const_constructors, unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_directions_api/google_directions_api.dart';

class GMapsHomePickUp extends StatefulWidget {
  const GMapsHomePickUp({Key? key}) : super(key: key);

  @override
  _GMapsHomePickUpState createState() => _GMapsHomePickUpState();
}

class _GMapsHomePickUpState extends State<GMapsHomePickUp> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(25.540539431310854, 84.85082954594253),
    zoom: 17,
  );

  late GoogleMapController _googleMapController;
  final Set<Marker> _marker = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState() {
    setCustomMarker();
    super.initState();
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
      body: GoogleMap(
        mapType: MapType.normal,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: _onMapCreated,
        markers: _marker,
      ),
    );
  }
}