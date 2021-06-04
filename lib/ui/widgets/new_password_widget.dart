import 'package:flutter/material.dart';
import 'package:flutter_job_task/constants/colors.dart';
import 'package:flutter_job_task/constants/constants_utils.dart';
import 'package:flutter_job_task/ui/widgets/profile_fields_widget.dart';

class NewPasswordWidget extends StatefulWidget {
  NewPasswordWidget(
      {Key? key, this.oldPassword, this.onReset})
      : super(key: key);
  var oldPassword;
  var onReset;

  @override
  _NewPasswordWidgetState createState() => _NewPasswordWidgetState();
}

class _NewPasswordWidgetState extends State<NewPasswordWidget> {
  var newPassword = TextEditingController();
  var confirmPassword = TextEditingController();
  String pass = "";
  String confirm = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ProfileFieldWidget(
          hintText: "Enter new password",
          controller: newPassword,
          obsur: true,
          textColor: pinkColor,
          onChange: (value) {
            pass = value;
          },
          icon: Icon(
            Icons.dialpad,
            size: 34,
            color: pinkColor,
          ),
          enable: false,
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          width: 300,
          height: 2,
          color: Colors.green,
        ),
        SizedBox(
          height: 10,
        ),
        ProfileFieldWidget(
          hintText: "Enter new password",
          controller: confirmPassword,
          obsur: true,
          textColor: pinkColor,
          onChange: (value) {
            confirm = value;
          },
          icon: Icon(
            Icons.done,
            size: 34,
            color: pinkColor,
          ),
          enable: false,
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          width: 300,
          height: 2,
          color: Colors.green,
        ),
        SizedBox(
          height: 40,
        ),
        InkWell(
          onTap: () {
            if (check(pass, confirm)) {
              showMessage(
                  "Alert", "Both password field should not empty", context);
              return;
            }
            if (pass != confirm) {
              showMessage(
                  "Alert", "Both password field should be same", context);
              return;
            }

            widget.onReset(pass);
          },
          child: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Text(
              "OK",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }

  bool check(String isEmpty, String isEmpty2) {
    if (isEmpty.isEmpty) {
      return true;
    }
    if (isEmpty2.isEmpty) {
      return true;
    }
    if (isEmpty.isEmpty && isEmpty2.isEmpty) {
      return true;
    }
    return false;
  }
}
