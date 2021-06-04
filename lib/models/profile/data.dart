/// id : 7
/// name : "test user 2 check"
/// user_name : "user2"
/// email : "user2@site.com"
/// phone : "+923048969096"
/// email_verified_at : null
/// company_name : "aslkdfjalskdjf"
/// status : "ACTIVE"
/// role : "USER"
/// created_at : "2021-05-18T07:58:22.000000Z"
/// updated_at : "2021-06-03T18:40:08.000000Z"
/// photo : "/frontEnd/images/profile/profile-16220279695421660997.jpg"
/// cover_photo : "/frontEnd/images/cover_profile/profile_cover-16220279771175582717.jpg"
/// city_id : 2
/// state_id : 3
/// zip_code_id : 3
/// photo_url : "http://3.141.55.247/frontEnd/images/profile/profile-16220279695421660997.jpg"
/// cover_photo_url : "http://3.141.55.247/frontEnd/images/cover_profile/profile_cover-16220279771175582717.jpg"
/// city : "Acciano"
/// state : "ABRUZZO"
/// zip_code : "67041"
/// verified : true
/// zipcodes : []

class Data {
  int? id;
  String? name;
  String? userName;
  String? email;
  String? phone;
  dynamic? emailVerifiedAt;
  String? companyName;
  String? status;
  String? role;
  String? createdAt;
  String? updatedAt;
  String? photo;
  String? coverPhoto;
  int? cityId;
  int? stateId;
  int? zipCodeId;
  String? photoUrl;
  String? coverPhotoUrl;
  String? city;
  String? state;
  String? zipCode;
  bool? verified;
  List<dynamic>? zipcodes;

  Data(
      {this.id,
      this.name,
      this.userName,
      this.email,
      this.phone,
      this.emailVerifiedAt,
      this.companyName,
      this.status,
      this.role,
      this.createdAt,
      this.updatedAt,
      this.photo,
      this.coverPhoto,
      this.cityId,
      this.stateId,
      this.zipCodeId,
      this.photoUrl,
      this.coverPhotoUrl,
      this.city,
      this.state,
      this.zipCode,
      this.verified,
      this.zipcodes});

  Data.fromJson(dynamic json) {
    id = json["id"];
    name = json["name"];
    userName = json["user_name"];
    email = json["email"];
    phone = json["phone"];
    emailVerifiedAt = json["email_verified_at"];
    companyName = json["company_name"];
    status = json["status"];
    role = json["role"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
    photo = json["photo"];
    coverPhoto = json["cover_photo"];
    cityId = json["city_id"];
    stateId = json["state_id"];
    zipCodeId = json["zip_code_id"];
    photoUrl = json["photo_url"];
    coverPhotoUrl = json["cover_photo_url"];
    city = json["city"];
    state = json["state"];
    zipCode = json["zip_code"];
    verified = json["verified"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["name"] = name;
    map["user_name"] = userName;
    map["email"] = email;
    map["phone"] = phone;
    map["email_verified_at"] = emailVerifiedAt;
    map["company_name"] = companyName;
    map["status"] = status;
    map["role"] = role;
    map["created_at"] = createdAt;
    map["updated_at"] = updatedAt;
    map["photo"] = photo;
    map["cover_photo"] = coverPhoto;
    map["city_id"] = cityId;
    map["state_id"] = stateId;
    map["zip_code_id"] = zipCodeId;
    map["photo_url"] = photoUrl;
    map["cover_photo_url"] = coverPhotoUrl;
    map["city"] = city;
    map["state"] = state;
    map["zip_code"] = zipCode;
    map["verified"] = verified;
    return map;
  }
}
