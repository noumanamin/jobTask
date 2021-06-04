import 'package:flutter/material.dart';
import 'package:flutter_job_task/constants/colors.dart';
import 'package:flutter_job_task/constants/constants_utils.dart';

class OldPassWordWidget extends StatefulWidget {
  OldPassWordWidget({Key? key, this.arrowClick, this.oldPassord})
      : super(key: key);

  var arrowClick;
  var oldPassord;

  @override
  _OldPassWordWidgetState createState() => _OldPassWordWidgetState();
}

class _OldPassWordWidgetState extends State<OldPassWordWidget> {
  var oldCtr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.lock,
              size: 40,
              color: pinkColor,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
                  controller: oldCtr,
                  obscureText: true,
                  style: TextStyle(color: pinkColor, fontSize: 18),
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: pinkColor, fontSize: 18),
                      border: InputBorder.none,
                      hintText: "Enter your old password"),
                )),
            SizedBox(
              width: 40,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 40),
          width: 300,
          height: 2,
          color: Colors.green,
        ),
        SizedBox(
          height: 50,
        ),
        InkWell(
            onTap: () {
              if (oldCtr.text.isEmpty) {
                showMessage("Alert", "Password field should not empty", context);
                return;
              }
              widget.oldPassord(oldCtr.text.toString());
              widget.arrowClick("true");
            },
            child: Icon(
              Icons.arrow_forward,
              size: 48,
            ))
      ],
    );
  }
}
