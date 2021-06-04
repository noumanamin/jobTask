

import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';

abstract class RegisterState{

}

class RegisterInitialState extends RegisterState{

}

class RegisterUserProcessState extends RegisterState{

}

class  RegisterUserSuccessState extends RegisterState{
  final SuccessModel? successModel;
  RegisterUserSuccessState({
    this.successModel});
}

class  RegisterUserErrorState extends RegisterState{
  final ErrorModel? errorModel;

  RegisterUserErrorState({
    this.errorModel});
}


