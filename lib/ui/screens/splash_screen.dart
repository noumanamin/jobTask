import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_job_task/base.dart';
import 'package:flutter_job_task/blocs/password_reset_block.dart';
import 'package:flutter_job_task/constants/colors.dart';
import 'package:flutter_job_task/events/password_reset_events.dart';
import 'package:flutter_job_task/models/profile/data.dart';
import 'package:flutter_job_task/models/profile/profile_model.dart';
import 'package:flutter_job_task/states/password_reset_state.dart';
import 'package:flutter_job_task/ui/widgets/new_password_widget.dart';
import 'package:flutter_job_task/ui/widgets/old_password_widget.dart';
import 'package:flutter_job_task/ui/widgets/profile_update_widget.dart';
import 'package:image_picker/image_picker.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends Base<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();

    final Map<String, String> _body = {
      "profile": "getProfile",
    };

    BlocProvider.of<PasswordResetBloc>(context).add(PasswordReset(body: _body));
  }

  String oldPassword = "";
  int currentIndex = 0;

  File? pickedImage;

  Widget getPage(int index) {
    if (index == 1) {
      return OldPassWordWidget(
        oldPassord: (value) {
          oldPassword = value;
        },
        arrowClick: (value) {
          currentIndex = 2;
          setState(() {});
        },
      );
    } else if (index == 2) {
      return NewPasswordWidget(
          oldPassword: oldPassword,
          onReset: (value) {
            final Map<String, String> _body = {
              "password": value,
              "old_password": oldPassword,
            };

            BlocProvider.of<PasswordResetBloc>(context)
                .add(PasswordReset(body: _body));
            setState(() {});
          });
    }
    return ProfileUpdateWidget(
      onTickClick: (value) {
        print("");
        PasswordResetBloc provider =
            BlocProvider.of<PasswordResetBloc>(context);
        provider.data = provider.data ?? Data();
        final _body = {
          'form': "form",
          "user_name": provider.data!.userName,
          "name": value['field']=="name"?value['name']:provider.data!.name,
          "email": provider.data!.email,
          "company_name": provider.data!.companyName,
          "city_id": "2",
          "state_id": "3",
          "zip_code_id": "3",
        };

        BlocProvider.of<PasswordResetBloc>(context)
            .add(PasswordReset(body: _body));
      },
    );
  }

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    uploadPhoto(image, context);

    setState(() {
      pickedImage = image;
    });
  }

  _imgFromGallery() async {
    File pickedImageFile = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    uploadPhoto(pickedImageFile, context);
    setState(() {
      pickedImage = pickedImageFile;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    PasswordResetBloc provider = BlocProvider.of<PasswordResetBloc>(context);
    provider.data = provider.data ?? Data();

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return BlocListener<PasswordResetBloc, PasswordResetState>(
      listener: (cxt, state) {
        if (state is PasswordResetProcessState) {
          EasyLoading.show(status: "Please wait..", dismissOnTap: true);
        } else if (state is PasswordResetSuccessState) {
          if (state.successModel!.message == "form") {
            final Map<String, String> _body = {
              "profile": "getProfile",
            };
            BlocProvider.of<PasswordResetBloc>(context).add(PasswordReset(body: _body));
          } else if (state.successModel!.message == "getProfile") {
            Profile_model model =
                Profile_model.fromJson(state.successModel!.data);

            BlocProvider.of<PasswordResetBloc>(context).data = model.data;
            setState(() {});
          }
          EasyLoading.dismiss();
        } else if (state is PasswordResetErrorState) {
          EasyLoading.showError(state.errorModel!.message,
              dismissOnTap: true, duration: Duration(seconds: 2));
        }
      },
      child: Scaffold(
        backgroundColor: kAccentColor,
        body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/images/img_flower.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            bottomLeft: Radius.circular(30))),
                    child: Row(
                      children: [
                        Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(left: 24),
                          decoration: BoxDecoration(
                            color: Color(0xffEDEDF5),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                blurRadius: 4,
                                offset: Offset(4, 3), // Shadow position
                              ),
                            ],
                          ),
                          child: Icon(Icons.clear),
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          "Profile",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 205),
                    width: width,
                    height: height - 215,
                    child: Image.asset(
                      'assets/images/img_wallpaper.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 203),
                    width: width,
                    height: height - 213,
                    color: Colors.white.withOpacity(0.85),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 320,
                          height: 320,
                          margin: EdgeInsets.only(
                              left: width * 0.1, right: width * 0.1),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(4, 3), // Shadow position
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(400))),
                          child: getPage(currentIndex),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 126,
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 30,
                              ),
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    provider.data!.name ?? "Abramo Luca",
                                    style: TextStyle(
                                        color: pinkColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      currentIndex = 1;
                                      setState(() {});
                                    },
                                    child: Container(
                                      width: 110,
                                      height: 30,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.lock,
                                            size: 20,
                                            color: Color(0xff717171),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Update",
                                            style: TextStyle(
                                              color: pinkColor,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.green.withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(60),
                                  ),
                                  border: Border.all(
                                      color: Colors.green, width: 2)),
                              child: Stack(
                                children: [
                                  // ignore: unnecessary_null_comparison
                                  pickedImage == null
                                      ? provider.data!.coverPhotoUrl == null
                                          ? ClipOval(
                                              child: Image.asset(
                                                "assets/images/man1.jpg",
                                                height: 60,
                                                width: 60,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                          : ClipOval(
                                              child: Image.network(
                                                provider.data!.coverPhotoUrl!,
                                                height: 60,
                                                width: 60,
                                                fit: BoxFit.cover,
                                              ),
                                            )
                                      : ClipOval(
                                          child: Image.file(
                                            pickedImage!,
                                            height: 60,
                                            width: 60,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: InkWell(
                                      onTap: () {
                                        _showPicker(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.5),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(60),
                                              bottomRight: Radius.circular(60),
                                            )),
                                        width: 120,
                                        height: 30,
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void uploadPhoto(File image, BuildContext context) {
    PasswordResetBloc provider = BlocProvider.of<PasswordResetBloc>(context);
    provider.data = provider.data ?? Data();
    final _body = {
      "cover_photo": image,
      "user_name": provider.data!.userName,
      "name": provider.data!.name,
      "email": provider.data!.email,
      "company_name": provider.data!.companyName,
    };

    BlocProvider.of<PasswordResetBloc>(context).add(PasswordReset(body: _body));
  }
}
