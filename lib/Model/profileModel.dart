// ignore_for_file: prefer_collection_literals, unnecessary_new, file_names, unnecessary_this, prefer_void_to_null

class ProfileModel {
  late String? sId;
  late int? phoneno;
  late String? createdat;
  late int? islocked;
  late int? isactive;
  late Null otp;
  late Null temptoken;
  late int? usertype;
  late int? iV;
  late String? authtoken;

  ProfileModel(
      {this.sId,
      this.phoneno,
      this.createdat,
      this.islocked,
      this.isactive,
      this.otp,
      this.temptoken,
      this.usertype,
      this.iV,
      this.authtoken});

  ProfileModel.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    phoneno = json['phoneno'];
    createdat = json['createdat'];
    islocked = json['islocked'];
    isactive = json['isactive'];
    otp = json['otp'];
    temptoken = json['temptoken'];
    usertype = json['usertype'];
    iV = json['__v'];
    authtoken = json['authtoken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['phoneno'] = this.phoneno;
    data['createdat'] = this.createdat;
    data['islocked'] = this.islocked;
    data['isactive'] = this.isactive;
    data['otp'] = this.otp;
    data['temptoken'] = this.temptoken;
    data['usertype'] = this.usertype;
    data['__v'] = this.iV;
    data['authtoken'] = this.authtoken;
    return data;
  }
}
