import 'package:flutter/cupertino.dart';

class OdooSingleton {
  BuildContext? _context;
  double? width;
  double? height;
  String baseUrl = "";
  static final OdooSingleton _singleton = OdooSingleton._internal();

  factory OdooSingleton() => _singleton;

  OdooSingleton._internal();

  BuildContext get context => _context!;

  set context(BuildContext value) {
    _context = value;
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
