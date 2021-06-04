/// name : "nouman,"
/// field : "name"

class Profile_up_model {
  String? name;
  String? field;

  Profile_up_model({
      this.name, 
      this.field});

  Profile_up_model.fromJson(dynamic json) {
    name = json["name"];
    field = json["field"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["field"] = field;
    return map;
  }

}