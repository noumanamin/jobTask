import 'package:flutter_job_task/remote_models/crm/crm_model.dart';
import 'package:flutter_job_task/remote_models/helpdesk/help_desk_model.dart';

class CrmResult {
  List<CrmModel>? result;

  CrmResult({this.result});

  CrmResult.fromJson(dynamic json) {
    if (json != null) {
      result = [];
      json.forEach((v) {
        result?.add(CrmModel.fromJson(v));
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
