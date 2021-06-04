import 'data.dart';

/// error : false
/// message : "success."
/// data : {"id":7,"name":"test user 2 check","user_name":"user2","email":"user2@site.com","phone":"+923048969096","email_verified_at":null,"company_name":"aslkdfjalskdjf","status":"ACTIVE","role":"USER","created_at":"2021-05-18T07:58:22.000000Z","updated_at":"2021-06-03T18:40:08.000000Z","photo":"/frontEnd/images/profile/profile-16220279695421660997.jpg","cover_photo":"/frontEnd/images/cover_profile/profile_cover-16220279771175582717.jpg","city_id":2,"state_id":3,"zip_code_id":3,"photo_url":"http://3.141.55.247/frontEnd/images/profile/profile-16220279695421660997.jpg","cover_photo_url":"http://3.141.55.247/frontEnd/images/cover_profile/profile_cover-16220279771175582717.jpg","city":"Acciano","state":"ABRUZZO","zip_code":"67041","verified":true,"zipcodes":[]}

class Profile_model {
  bool? error;
  String? message;
  Data? data;

  Profile_model({
      this.error, 
      this.message, 
      this.data});

  Profile_model.fromJson(dynamic json) {
    data =  Data.fromJson(json);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (data != null) {
      map["data"] = data?.toJson();
    }
    return map;
  }

}