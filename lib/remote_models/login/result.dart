import 'package:flutter_job_task/remote_models/login/user_context.dart';

import 'user_companies.dart';
import 'currencies.dart';
import 'cache_hashes.dart';
import 'companies_currency_id.dart';

/// uid : 2
/// is_system : true
/// is_admin : true
/// user_context : {"lang":"en_US","tz":"Asia/Karachi","uid":2}
/// db : "aqd1-uat100-2551003"
/// server_version : "14.0+e"
/// server_version_info : [14,0,0,"final",0,"e"]
/// name : "Administrator"
/// username : "admin"
/// partner_display_name : "Administrator"
/// company_id : 1
/// partner_id : 3
/// web.base.url : "https://aqd1-uat100-2551003.dev.odoo.com"
/// active_ids_limit : 20000
/// user_companies : {"current_company":[1,"Azam Qamar Developers"],"allowed_companies":[[1,"Azam Qamar Developers"]]}
/// currencies : {"1":{"symbol":"€","position":"after","digits":[69,2]},"165":{"symbol":"Rs.","position":"after","digits":[69,2]},"2":{"symbol":"$","position":"before","digits":[69,2]}}
/// show_effect : "True"
/// display_switch_company_menu : false
/// cache_hashes : {"load_menus":"6b979eb00a0b25f14035143b1b454cb39f0e2ac2a3e65e66f2e084b3203aa50c","qweb":"d0dbde50645356e6694ed71c48afa2051afe5191ccbbf05ee4adf5c17ae7ae24","translations":"5227498d9df4b403b0244c75aac21e0c091e50ce"}
/// user_id : [2]
/// max_time_between_keys_in_ms : 55
/// company_currency_id : 165
/// companies_currency_id : {"1":165}
/// warning : "admin"
/// expiration_date : "2021-06-25 08:06:28"
/// expiration_reason : "trial"
/// web_tours : []
/// notification_type : "email"
/// map_box_token : false
/// odoobot_initialized : true
/// ocn_token_key : false
/// fcm_project_id : false
/// inbox_action : 112

class Result {
  int? uid;
  bool? isSystem;
  bool? isAdmin;
  User_context? userContext;
  String? db;
  String? serverVersion;
  List<int>? serverVersionInfo;
  String? name;
  String? username;
  String? partnerDisplayName;
  int? companyId;
  int? partnerId;
  int? activeIdsLimit;
  User_companies? userCompanies;
  Currencies? currencies;
  String? showEffect;
  bool? displaySwitchCompanyMenu;
  Cache_hashes? cacheHashes;
  List<int>? userId;
  int? maxTimeBetweenKeysInMs;
  int? companyCurrencyId;
  Companies_currency_id? companiesCurrencyId;
  String? warning;
  String? expirationDate;
  String? expirationReason;
  List<dynamic>? webTours;
  String? notificationType;
  bool? mapBoxToken;
  bool? odoobotInitialized;
  bool? ocnTokenKey;
  bool? fcmProjectId;
  int? inboxAction;

  Result({
      this.uid, 
      this.isSystem, 
      this.isAdmin, 
      this.userContext, 
      this.db, 
      this.serverVersion, 
      this.serverVersionInfo, 
      this.name, 
      this.username, 
      this.partnerDisplayName, 
      this.companyId, 
      this.partnerId,
      this.activeIdsLimit, 
      this.userCompanies, 
      this.currencies, 
      this.showEffect, 
      this.displaySwitchCompanyMenu, 
      this.cacheHashes, 
      this.userId, 
      this.maxTimeBetweenKeysInMs, 
      this.companyCurrencyId, 
      this.companiesCurrencyId, 
      this.warning, 
      this.expirationDate, 
      this.expirationReason, 
      this.webTours, 
      this.notificationType, 
      this.mapBoxToken, 
      this.odoobotInitialized, 
      this.ocnTokenKey, 
      this.fcmProjectId, 
      this.inboxAction});

  Result.fromJson(dynamic json) {
    uid = json["uid"];
    isSystem = json["is_system"];
    isAdmin = json["is_admin"];
    userContext = json["user_context"] != null ? User_context.fromJson(json["user_context"]) : null;
    db = json["db"];
    serverVersion = json["server_version"];
    serverVersionInfo = json["server_version_info"] != null ? json["server_version_info"].cast<int>() : [];
    name = json["name"];
    username = json["username"];
    partnerDisplayName = json["partner_display_name"];
    companyId = json["company_id"];
    partnerId = json["partner_id"];
    activeIdsLimit = json["active_ids_limit"];
    userCompanies = json["user_companies"] != null ? User_companies.fromJson(json["user_companies"]) : null;
    currencies = json["currencies"] != null ? Currencies.fromJson(json["currencies"]) : null;
    showEffect = json["show_effect"];
    displaySwitchCompanyMenu = json["display_switch_company_menu"];
    cacheHashes = json["cache_hashes"] != null ? Cache_hashes.fromJson(json["cache_hashes"]) : null;
    userId = json["user_id"] != null ? json["user_id"].cast<int>() : [];
    maxTimeBetweenKeysInMs = json["max_time_between_keys_in_ms"];
    companyCurrencyId = json["company_currency_id"];
    companiesCurrencyId = json["companies_currency_id"] != null ? Companies_currency_id.fromJson(json["companies_currency_id"]) : null;
    warning = json["warning"];
    expirationDate = json["expiration_date"];
    expirationReason = json["expiration_reason"];

    notificationType = json["notification_type"];
    mapBoxToken = json["map_box_token"];
    odoobotInitialized = json["odoobot_initialized"];
    ocnTokenKey = json["ocn_token_key"];
    fcmProjectId = json["fcm_project_id"];
    inboxAction = json["inbox_action"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["uid"] = uid;
    map["is_system"] = isSystem;
    map["is_admin"] = isAdmin;
    if (userContext != null) {
      map["user_context"] = userContext?.toJson();
    }
    map["db"] = db;
    map["server_version"] = serverVersion;
    map["server_version_info"] = serverVersionInfo;
    map["name"] = name;
    map["username"] = username;
    map["partner_display_name"] = partnerDisplayName;
    map["company_id"] = companyId;
    map["partner_id"] = partnerId;
    map["active_ids_limit"] = activeIdsLimit;
    if (userCompanies != null) {
      map["user_companies"] = userCompanies?.toJson();
    }
    if (currencies != null) {
      map["currencies"] = currencies?.toJson();
    }
    map["show_effect"] = showEffect;
    map["display_switch_company_menu"] = displaySwitchCompanyMenu;
    if (cacheHashes != null) {
      map["cache_hashes"] = cacheHashes?.toJson();
    }
    map["user_id"] = userId;
    map["max_time_between_keys_in_ms"] = maxTimeBetweenKeysInMs;
    map["company_currency_id"] = companyCurrencyId;
    if (companiesCurrencyId != null) {
      map["companies_currency_id"] = companiesCurrencyId?.toJson();
    }
    map["warning"] = warning;
    map["expiration_date"] = expirationDate;
    map["expiration_reason"] = expirationReason;
    if (webTours != null) {
      map["web_tours"] = webTours?.map((v) => v.toJson()).toList();
    }
    map["notification_type"] = notificationType;
    map["map_box_token"] = mapBoxToken;
    map["odoobot_initialized"] = odoobotInitialized;
    map["ocn_token_key"] = ocnTokenKey;
    map["fcm_project_id"] = fcmProjectId;
    map["inbox_action"] = inboxAction;
    return map;
  }

}