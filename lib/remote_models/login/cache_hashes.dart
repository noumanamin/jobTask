/// load_menus : "6b979eb00a0b25f14035143b1b454cb39f0e2ac2a3e65e66f2e084b3203aa50c"
/// qweb : "d0dbde50645356e6694ed71c48afa2051afe5191ccbbf05ee4adf5c17ae7ae24"
/// translations : "5227498d9df4b403b0244c75aac21e0c091e50ce"

class Cache_hashes {
  String? loadMenus;
  String? qweb;
  String? translations;

  Cache_hashes({
      this.loadMenus, 
      this.qweb, 
      this.translations});

  Cache_hashes.fromJson(dynamic json) {
    loadMenus = json["load_menus"];
    qweb = json["qweb"];
    translations = json["translations"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["load_menus"] = loadMenus;
    map["qweb"] = qweb;
    map["translations"] = translations;
    return map;
  }

}