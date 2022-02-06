class UpdateAmbulanceLocation {
  late String message ;

  UpdateAmbulanceLocation({required this.message});
  UpdateAmbulanceLocation.fromJson(Map<String, dynamic> json) {
    message = json['message'] ;
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['message'] = message ;
    return data ;
  }
}