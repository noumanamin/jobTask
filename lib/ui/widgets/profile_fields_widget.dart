import 'package:flutter/material.dart';
import 'package:flutter_job_task/constants/colors.dart';

class ProfileFieldWidget extends StatefulWidget {
  ProfileFieldWidget({
    Key? key,
    this.icon,
    this.controller,
    this.onTickClick,
    this.hintText,
    this.enable,
    this.textColor,
    this.onChange,
    this.obsur,
  }) : super(key: key);

  var icon;
  var controller;
  var onTickClick;
  var hintText;
  var enable;
  var textColor;
  var onChange;
  var obsur;

  @override
  _ProfileFieldWidgetState createState() => _ProfileFieldWidgetState();
}

class _ProfileFieldWidgetState extends State<ProfileFieldWidget> {
  bool tickClick = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        widget.icon,
        SizedBox(
          width: 10,
        ),
        Expanded(
            child: TextField(
          onChanged: (value) {
            widget.onChange(value);
          },
          controller: widget.controller,
          obscureText: widget.obsur ?? false,
          style: TextStyle(color: widget.textColor ?? Colors.green),
          enabled: tickClick,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: widget.textColor ?? Colors.green),
              border: InputBorder.none,
              hintText: widget.hintText ?? ""),
        )),
        SizedBox(
          width: 10,
        ),
        if (widget.enable ?? true)
          tickClick
              ? InkWell(
                  onTap: () {
                    widget.onTickClick("false");
                    setState(() {
                      tickClick = false;
                    });
                  },
                  child: Icon(
                    Icons.done,
                    color: pinkColor,
                  ),
                )
              : InkWell(
                  onTap: () {
                    widget.onTickClick("true");
                    tickClick = true;
                    setState(() {});
                  },
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
