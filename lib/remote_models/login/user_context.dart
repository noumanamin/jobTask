/// lang : "en_US"
/// tz : "Asia/Karachi"
/// uid : 2

class User_context {
  String? lang;
  String? tz;
  int? uid;

  User_context({
      this.lang, 
      this.tz, 
      this.uid});

  User_context.fromJson(dynamic json) {
    lang = json["lang"];
    tz = json["tz"];
    uid = json["uid"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["lang"] = lang;
    map["tz"] = tz;
    map["uid"] = uid;
    return map;
  }

}