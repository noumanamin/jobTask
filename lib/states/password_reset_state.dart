

import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';

abstract class PasswordResetState{

}

class PasswordResetInitialState extends PasswordResetState{

}

class PasswordResetProcessState extends PasswordResetState{

}

class  PasswordResetSuccessState extends PasswordResetState{
  final SuccessModel? successModel;
  PasswordResetSuccessState({
    this.successModel});
}

class  PasswordResetErrorState extends PasswordResetState{
  final ErrorModel? errorModel;

  PasswordResetErrorState({
    this.errorModel});
}


