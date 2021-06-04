

import 'package:dartz/dartz.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_job_task/events/register_event.dart';
import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';
import 'package:flutter_job_task/resources/repository.dart';
import 'package:flutter_job_task/states/register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent,RegisterState>{

  Repository _repository=Repository();

  RegisterBloc(RegisterState initialState) : super(initialState);


  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async*{
    if(event is RegisterUser){
      yield RegisterUserProcessState();
      Either<ErrorModel,SuccessModel> result = await _repository.registerUser(body: event.body);
      yield result.fold((l) => RegisterUserErrorState(errorModel: l), (r) =>
          RegisterUserSuccessState(successModel: r));
    }
  }
}