
import 'package:flutter_job_task/remote_models/helpdesk/help_desk_model.dart';

class ApiResult {
  List<HelpDeskModel>? result;

  ApiResult({
    this.result});

  ApiResult.fromJson(dynamic json) {
    if (json != null) {
      result = [];
      json.forEach((v) {
        result?.add(HelpDeskModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (result != null) {
      map["result"] = result?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}