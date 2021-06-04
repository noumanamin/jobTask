/// symbol : "Rs."
/// position : "after"
/// digits : [69,2]

class OneSizeFive {
  String? symbol;
  String? position;
  var digits;

  OneSizeFive({
      this.symbol, 
      this.position, 
      this.digits});

  OneSizeFive.fromJson(dynamic json) {
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