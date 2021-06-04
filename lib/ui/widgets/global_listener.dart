import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_job_task/app.dart';
import 'package:flutter_job_task/routes.dart';

class GlobalListener extends StatelessWidget {
  final child;

  GlobalListener({this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(listeners: [
      
    ], child: child);
  }
}
