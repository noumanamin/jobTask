/// id : "04108650-bed7-11eb-b9e0-75018887ad4b"
/// jsonrpc : "2.0"
/// result : ["aqd1-uat100-2551003"]

class ServerResult {
  String? id;
  String? jsonrpc;
  List<String>? result;

  ServerResult({
      this.id, 
      this.jsonrpc, 
      this.result});

  ServerResult.fromJson(dynamic json) {
    id = json["id"];
    jsonrpc = json["jsonrpc"];
    result = json["result"] != null ? json["result"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = id;
    map["jsonrpc"] = jsonrpc;
    map["result"] = result;
    return map;
  }

}