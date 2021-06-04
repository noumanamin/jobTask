/// 1 : 165

class Companies_currency_id {
  int? one;

  Companies_currency_id({
      this.one});

  Companies_currency_id.fromJson(dynamic json) {
    one = json["1"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["1"] = 1;
    return map;
  }

}