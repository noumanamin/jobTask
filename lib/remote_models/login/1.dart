/// symbol : "€"
/// position : "after"
/// digits : [69,2]

class One {
  String? symbol;
  String? position;
  var digits;

  One({
      this.symbol, 
      this.position, 
      this.digits});

  One.fromJson(dynamic json) {
    symbol = json["symbol"];
    position = json["position"];
    digits = json["digits"] != null ? json["digits"] : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["symbol"] = symbol;
    map["position"] = position;
    map["digits"] = digits;
    return map;
  }

}