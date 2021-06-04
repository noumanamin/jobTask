import 'result.dart';


class PartnerModel {
  String? jsonrpc;
  String? id;
  List<Result>? result;

  PartnerModel({
      this.jsonrpc, 
      this.id, 
      this.result});

  PartnerModel.fromJson(dynamic json) {
    if (json != null) {
      result = [];
      json.forEach((v) {
        result?.add(Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["jsonrpc"] = jsonrpc;
    map["id"] = id;
    if (result != null) {
      map["result"] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}