import '1.dart';
import '165.dart';
import '2.dart';

/// 1 : {"symbol":"€","position":"after","digits":[69,2]}
/// 165 : {"symbol":"Rs.","position":"after","digits":[69,2]}
/// 2 : {"symbol":"$","position":"before","digits":[69,2]}

class Currencies {
  var one;
  var oneSizeFive;
  var two;

  Currencies({this.one, this.oneSizeFive, this.two});

  Currencies.fromJson(dynamic json) {
    one = json["1"] != null ? One.fromJson(json["1"]) : null;
    oneSizeFive =
        json["165"] != null ? OneSizeFive.fromJson(json["165"]) : null;
    two = json["2"] != null ? Two.fromJson(json["2"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (one != null) {
      map["1"] = one?.toJson();
    }
    if (oneSizeFive != null) {
      map["165"] = oneSizeFive?.toJson();
    }
    if (two != null) {
      map["2"] = two?.toJson();
    }
    return map;
  }
}
