import 'dart:convert';
import 'dart:io';
import 'package:logger/logger.dart';
import 'package:http/http.dart';
import 'package:siren24/ForAPI/updateambulance.dart';
import 'package:siren24/ForAPI/userprofile.dart';
import 'otp.dart';
import 'otpverify.dart';

String otpToken = " ";
String authToken = " ";
String userid = " ";
String ip = "65.2.132.175" ;

class ApiCaller {
  // late int otp;

  //*********************************************************************************//

  //Send OTP
  Future<void> sendOtpToPhone(int phone, int usertype) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/otp/sendotp'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: jsonEncode({"phone": phone, "usertype": usertype}),
    );
    handleError(res);

    Logger().d(res.body);
    var response = RequestOtp.fromJson(jsonDecode(res.body));
    otpToken = response.token!;
  }

  //*********************************************************************************//

  //Verify OTP
  Future<String> verifyOtp(int otp) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/otp/verifyotp'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "authtoken": otpToken,
      },
      body: jsonEncode({"otp": otp}),
    );
    handleError(res);

    Logger().d(res.body);
    var response = Verify.fromJson(jsonDecode(res.body));
    authToken = response.authtoken;
    userid = response.userid;

    if (response.userid == '') {
      return 'Yes';
    } else {
      return 'No';
    }
  }

  //*********************************************************************************//

  //Update Ambulance
  Future<void> updateambulance(String _id, String brand, String model) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/ambulance/update'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "authtoken": authToken,
      },
      body: jsonEncode({"_id": _id, "brand": brand, "model": model}),
    );
    handleError(res);
    Logger().d(res.body) ;
  }

  //*********************************************************************************//

  //Reject Ambulance
  Future<void> rejectambulance(String orderid, String cencelation_reason) async {
    var res = await post(
        Uri.parse('http://$ip:4000/api/order/driver/cencelbooking'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "authtoken": authToken,
      },
      body: jsonEncode({"orderid": orderid, "cencelation_reason": cencelation_reason}),
    );
    handleError(res) ;
  }

  //*********************************************************************************//

  //Add Ambulance
  Future<String> addambulance(String car_no, String ownerid, String type,
      String brand, String model, String addons) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/ambulance/update'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "authtoken": authToken,
      },
      body: jsonEncode({
        "car_no": car_no,
        "ownerid": ownerid,
        "type": type,
        "brand": brand,
        "model": model,
        "addons": addons
      }),
    );
    handleError(res);
    Logger().d(res.body) ;
    var response = UpdateApi.fromJson(jsonDecode(res.body));
    return response.toString() ;
  }

  //*********************************************************************************//

  //User Profile
  Future<Map> user_profile() async{
    var res = await get(
      Uri.parse('http://$ip:4000/api/profile/view'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        // "authtoken": "B6gMxyAqFF6n4Pepmb16TeqLBoJQHJShTLKho4CWLmwU",
        "authtoken": authToken,
      },
    );
    handleError(res);
    Logger().d(res.body) ;

    var response = Profile.fromJson(jsonDecode(res.body));
    Map value = {
      "name": response.name ,
      "dob": response.dob,
      "phonenumber": response.phonenumber,
      "profileimg": response.profileimg,
      "gender": response.gender
    } ;
    // name = await response.name ;
    // print(name) ;
    // return name ;
    // name = response.name ;
    // phonenumberr = response.phonenumber ;
    // return response.toString() ;
    return value ;
  }

  //*********************************************************************************//

  //Update Location
  Future<String> updatelocation(double lat, double lng) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/location/vehical/update'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        "authtoken": "B6gMxyAqFF6n4Pepmb16TeqLBoJQHJShTLKho4CWLmwU",
      },
      body: jsonEncode({"lat": lat, "lng": lng}),
    );
    handleError(res) ;
    
    Logger().d(res.body) ;
    var response = UpdateApi.fromJson(jsonDecode(res.body));
    return response.toString() ;
  }

  //*********************************************************************************//

  //Edit/Register
  Future<String> editProfile(
      String updatename,
      String updatedob,
      String updategender,
      // int updatephonenumber,
      String updateimg,
      int updateage) async {
    var res = await post(
      Uri.parse('http://$ip:4000/api/profile/edit'),
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
        // "authtoken": "B6gMxyAqFF6n4Pepmb16TeqLBoJQHJShTLKho4CWLmwU",
        "authtoken": authToken,
      },
      body: jsonEncode({
        "name": updatename ,
        "dob": updatedob,
        "gender": updategender,
        // "phoneno": updatephonenumber,
        "profile_img": updateimg,
        "age": updateage,
      }),
    );
    handleError(res);

    Logger().d(res.body);
    var response = UpdateApi.fromJson(jsonDecode(res.body));
    return response.message.toString();
  }

  //*********************************************************************************//

  //Handle error
  handleError(Response response) {
    if (response.statusCode >= 300) {
      throw Exception(
          jsonDecode(response.body)['message'] ?? "Unexpected error occurred");
    }
  }

  //*********************************************************************************//


}
