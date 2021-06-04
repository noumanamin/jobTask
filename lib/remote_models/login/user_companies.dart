/// current_company : [1,"Azam Qamar Developers"]
/// allowed_companies : [[1,"Azam Qamar Developers"]]

class User_companies {
  var currentCompany;
  var allowedCompanies;

  User_companies({
      this.currentCompany, 
      this.allowedCompanies});

  User_companies.fromJson(dynamic json) {
    currentCompany = json["current_company"] != null ? json["current_company"] : [];
    allowedCompanies = json["allowed_companies"] != null ? json["allowed_companies"] : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["current_company"] = currentCompany;
    map["allowed_companies"] = allowedCompanies;
    return map;
  }

}