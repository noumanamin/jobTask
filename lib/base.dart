import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_task/constants/constants_utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class Base<T extends StatefulWidget> extends State<T> {
  SharedPreferences? preferences;
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  /*
   * Create Odoo Object with URL, SessionID and UserID.
   * If SessionId or UserId is not present then pass only OdooURL.
   * Initialize SharedPreferences at once here and use it in anywhere you want to use.
   * Initialize User Data as User model and use it anywhere
   */


  int getUID() {
    // if (user != null) {
    //   return user.result.uid;
    // }
    return 0;
  }

  // bool isLoggedIn() {
  //   // return user != null;
  //   return falsel;
  // }

  String getURL() {
    // if (preferences != null) {
    //   return preferences.getString(Constants.ODOO_URL);
    // }
    return "";
  }

  String getSession() {
    // if (preferences != null) {
    //   return preferences.getString(Constants.SESSION);
    // }
    return "";
  }

  // User getUser() {
  //   return user;
  // }

  saveData({@required String? data, @required String? key}) async {
    SharedPreferences? sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setString(key, data);
  }

  // saveOdooUrl(String url) {
  //   if (preferences != null) preferences.setString(Constants.ODOO_URL, url);
  // }

  // This method is about push to new widget and replace current widget
  pushReplacement(StatefulWidget screenName) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screenName));
  }

  // This method is about push to new widget but don't replace current widget
  push(StatefulWidget screenName) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => screenName));
  }

  // This method is about push to new widget and remove all previous widget
  pushAndRemoveUntil(StatefulWidget screenName) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => screenName),
        (_) => false);
  }

  // Show loading with optional message params

  hideLoadingSuccess(String msg) {
    // EasyLoading.showSuccess(msg, duration: Duration(seconds: 2));
    // EasyLoading.dismiss();
  }

  hideLoadingError(String msg) {
    // EasyLoading.showError(msg, duration: Duration(seconds: 2));
    // EasyLoading.dismiss();
  }

  hideLoading() {
    // EasyLoading.dismiss();
  }

  /*
   * Show Snackbar with Global scaffold key
   * scaffoldKey is defined globally as snackbar do not find context of Scaffold widget
   * hideLoading is hide the loader when snackbar message is showing to UI
   */
  showSnackBar(String msg) {
    scaffoldKey.currentState!.showSnackBar(new SnackBar(content: Text(msg)));
  }

  showMessage(String title, String message) {
    hideLoading();
    if (Platform.isAndroid) {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext ctxt) {
          return AlertDialog(
            title: Text(
              title,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            content: Text(
              message,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Ok",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
    if (Platform.isIOS) {
      showCupertinoDialog(
        context: context,
        builder: (BuildContext ctxt) {
          return CupertinoAlertDialog(
            title: Text(
              title,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            content: Text(
              message,
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Ok",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }

// Check Internet Connection Async method with Snackbar message.
// Future<bool> isConnected() async {
//   try {
//     final result = await InternetAddress.lookup('google.com');
//     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//       return true;
//     }
//   } on SocketException catch (_) {
//     showSnackBar(Strings.internetMessage);
//     return false;
//   }
//   showSnackBar(Strings.internetMessage);
//   return false;
// }
}
