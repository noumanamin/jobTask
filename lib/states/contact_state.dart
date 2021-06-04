import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';

abstract class ContactState {}

class ContactInitialState extends ContactState {}

class ContactProcessState extends ContactState {}

class ContactSuccessState extends ContactState {
  final SuccessModel? successModel;

  ContactSuccessState({this.successModel});
}

class ContactErrorState extends ContactState {
  final ErrorModel? errorModel;

  ContactErrorState({this.errorModel});
}
