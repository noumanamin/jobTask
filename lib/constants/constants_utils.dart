import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_job_task/constants/odoo_singleton.dart';

double? height = OdooSingleton().height;
double? width = OdooSingleton().width;

String UID = "uid";
String SESSION_ID = "session_id";
String USER_PREF = "UserPrefs";
String ODOO_URL = "odooUrl";
String SESSION = "session";
String PERSON_ID = "person_id";
String serverDataKey = "serverKataKey";
String serverAddressKey = "serverAddressKey";

bool ios = Platform.isIOS ? true : false;
String website = 'Website';
String contacts = 'Contacts';
String helpdesk = 'Helpdesk';
String payslip = 'Payslip';
String employee = 'Employee';
String crm = 'CRM';

showMessage(String title, String message, BuildContext context,
    {var cancel, var onClickRemove}) {
  if (Platform.isAndroid) {
    showDialog(
      context: context,
      barrierDismissible: true,
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
      barrierDismissible: true,
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
            if (cancel ?? false)
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            FlatButton(
              onPressed: () {
                if (onClickRemove != null) {
                  onClickRemove("");
                } else {
                  Navigator.pop(context);
                }
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
