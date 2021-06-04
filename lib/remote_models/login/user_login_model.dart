import 'result.dart';

/// jsonrpc : "2.0"
/// id : "0e0bd500-bd4d-11eb-942b-f301cca1d714"
/// result : {"uid":2,"is_system":true,"is_admin":true,"user_context":{"lang":"en_US","tz":"Asia/Karachi","uid":2},"db":"aqd1-uat100-2551003","server_version":"14.0+e","server_version_info":[14,0,0,"final",0,"e"],"name":"Administrator","username":"admin","partner_display_name":"Administrator","company_id":1,"partner_id":3,"web.base.url":"https://aqd1-uat100-2551003.dev.odoo.com","active_ids_limit":20000,"user_companies":{"current_company":[1,"Azam Qamar Developers"],"allowed_companies":[[1,"Azam Qamar Developers"]]},"currencies":{"1":{"symbol":"€","position":"after","digits":[69,2]},"165":{"symbol":"Rs.","position":"after","digits":[69,2]},"2":{"symbol":"$","position":"before","digits":[69,2]}},"show_effect":"True","display_switch_company_menu":false,"cache_hashes":{"load_menus":"6b979eb00a0b25f14035143b1b454cb39f0e2ac2a3e65e66f2e084b3203aa50c","qweb":"d0dbde50645356e6694ed71c48afa2051afe5191ccbbf05ee4adf5c17ae7ae24","translations":"5227498d9df4b403b0244c75aac21e0c091e50ce"},"user_id":[2],"max_time_between_keys_in_ms":55,"company_currency_id":165,"companies_currency_id":{"1":165},"warning":"admin","expiration_date":"2021-06-25 08:06:28","expiration_reason":"trial","web_tours":[],"notification_type":"email","map_box_token":false,"odoobot_initialized":true,"ocn_token_key":false,"fcm_project_id":false,"inbox_action":112}

class UserLoginModel {
  String? jsonrpc;
  String? id;
  Result? result;

  UserLoginModel({
      this.jsonrpc, 
      this.id, 
      this.result});

  UserLoginModel.fromJson(dynamic json) {
    jsonrpc = json["jsonrpc"];
    id = json["id"];
    result = json["result"] != null ? Result.fromJson(json["result"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["jsonrpc"] = jsonrpc;
    map["id"] = id;
    if (result != null) {
      map["result"] = result?.toJson();
    }
    return map;
  }

}