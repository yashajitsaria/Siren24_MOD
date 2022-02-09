import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

import 'direction_response.dart';

const apiKey = "AIzaSyASODipwXRfzJNuFRN8lCaQeMnxLXSOvgQ";

class GoogleMapsServices {
  Future<GoogleMapServices> getRouteCoordinates(LatLng driver, LatLng user) async {
    Uri url =
        "https://maps.googleapis.com/maps/api/directions/json?origin=${driver.latitude},${driver.longitude}&destination=${user.latitude},${user.longitude}&key=$apiKey"
            as Uri;
    http.Response response = await http.get(url);
    GoogleMapServices values = googleMapServicesFromJson(response.body);
    return values;
  }
}
