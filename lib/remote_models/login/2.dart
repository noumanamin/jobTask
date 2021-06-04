/// symbol : "$"
/// position : "before"
/// digits : [69,2]

class Two {
  String? symbol;
  String? position;
  var digits;

  Two({
      this.symbol, 
      this.position, 
      this.digits});

  Two.fromJson(dynamic json) {
    symbol = json["symbol"];
    position = json["position"];
    digits = json["digits"] != null ? json["digits"]: [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["symbol"] = symbol;
    map["position"] = position;
    map["digits"] = digits;
    return map;
  }

}