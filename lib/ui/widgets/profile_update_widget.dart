import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_job_task/blocs/password_reset_block.dart';
import 'package:flutter_job_task/constants/colors.dart';
import 'package:flutter_job_task/models/profile/data.dart';
import 'package:flutter_job_task/models/profile_up_model.dart';
import 'package:flutter_job_task/ui/widgets/profile_fields_widget.dart';

class ProfileUpdateWidget extends StatefulWidget {
  ProfileUpdateWidget({Key? key, this.onTickClick}) : super(key: key);
  var onTickClick;

  @override
  _ProfileUpdateWidgetState createState() => _ProfileUpdateWidgetState();
}

class _ProfileUpdateWidgetState extends State<ProfileUpdateWidget> {
  bool nameClick = false;
  bool cityClick = false;
  bool phoneClick = false;

  var name = TextEditingController();
  var city = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();

  String nameTxt = "";
  String cityTxt = "";
  String phoneTxt = "";

  @override
  Widget build(BuildContext context) {
    PasswordResetBloc provider = BlocProvider.of<PasswordResetBloc>(context);
    provider.data = provider.data ?? Data();
    name.text = name.text.isEmpty ? provider.data!.name ?? "" : name.text;
    city.text = city.text.isEmpty ? provider.data!.city ?? "" : city.text;
    email.text = email.text.isEmpty ? provider.data!.email ?? "" : email.text;
    phone.text = phone.text.isEmpty ? provider.data!.phone ?? "" : phone.text;
    nameTxt = name.text;
    cityTxt = city.text;
    phoneTxt = phone.text;
    return Column(
      children: [
        SizedBox(
          height: 70,
        ),
        ProfileFieldWidget(
          controller: name,
          icon: Icon(Icons.person, color: pinkColor),
          hintText: "Enter your name",
          onChange: (value) {
            nameTxt = value;
          },
          onTickClick: (value) {
            if (value == "true") {
              nameClick = true;
              setState(() {});
            } else {
              if (nameTxt.isNotEmpty) {
                Profile_up_model model = Profile_up_model();
                model.name = nameTxt;
                model.field = "name";

                widget.onTickClick(model.toJson());
              }

              nameClick = false;
              setState(() {});
            }
          },
        ),
        if (nameClick)
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: 300,
            height: 2,
            color: Colors.black,
          ),
        ProfileFieldWidget(
          controller: city,
          icon: Icon(Icons.location_city, color: pinkColor),
          hintText: "Enter your city",
          onChange: (value) {
            cityTxt = value;
          },
          onTickClick: (value) {
            if (value == "true") {
              cityClick = true;
              setState(() {});
            } else {
              if (cityTxt.isNotEmpty) {
                Profile_up_model model = Profile_up_model();
                model.name = cityTxt;
                model.field = "city";

                widget.onTickClick(model.toJson());
              }
              cityClick = false;
              setState(() {});
            }
          },
        ),
        if (cityClick)
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: 300,
            height: 2,
            color: Colors.black,
          ),
        ProfileFieldWidget(
          controller: email,
          icon: Icon(Icons.email, color: pinkColor),
          hintText: "email",
          enable: false,
          onTickClick: (value) {},
        ),
        ProfileFieldWidget(
          controller: phone,
          icon: Icon(
            Icons.phone,
            color: pinkColor,
          ),
          hintText: "Enter your phone number",
          onChange: (value) {
            phoneTxt = value;
          },
          onTickClick: (value) {
            if (value == "true") {
              phoneClick = true;
              setState(() {});
            } else {
              if (phoneTxt.isNotEmpty) {
                Profile_up_model model = Profile_up_model();
                model.name = phoneTxt;
                model.field = "phone";

                widget.onTickClick(model.toJson());
              }
              phoneClick = false;
              setState(() {});
            }
          },
        ),
        if (phoneClick)
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            width: 300,
            height: 2,
            color: Colors.black,
          )
      ],
    );
  }
}
