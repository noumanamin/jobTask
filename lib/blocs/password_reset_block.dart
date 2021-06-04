import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_job_task/events/password_reset_events.dart';
import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/profile/data.dart';
import 'package:flutter_job_task/models/success_model.dart';
import 'package:flutter_job_task/resources/repository.dart';
import 'package:flutter_job_task/states/password_reset_state.dart';

class PasswordResetBloc extends Bloc<PasswordResetEvent, PasswordResetState> {
  Repository _repository = Repository();
  Data? data;

  PasswordResetBloc(PasswordResetState initialState) : super(initialState);

  @override
  Stream<PasswordResetState> mapEventToState(PasswordResetEvent event) async* {
    if (event is PasswordReset) {
      yield PasswordResetProcessState();
      if (event.body['form'] == "form") {
        Either<ErrorModel, SuccessModel> result =
        await _repository.updateForm(body: event.body);
        yield result.fold((l) => PasswordResetErrorState(errorModel: l),
                (r) => PasswordResetSuccessState(successModel: r));
      } else if (event.body["cover_photo"] is File) {
        Either<ErrorModel, SuccessModel> result =
            await _repository.uploadPhoto(body: event.body);
        yield result.fold((l) => PasswordResetErrorState(errorModel: l),
            (r) => PasswordResetSuccessState(successModel: r));
      } else if (event.body!['profile'] == "getProfile") {
        Either<ErrorModel, SuccessModel> result =
            await _repository.getProfile();
        yield result.fold((l) => PasswordResetErrorState(errorModel: l),
            (r) => PasswordResetSuccessState(successModel: r));
      } else {
        Either<ErrorModel, SuccessModel> result =
            await _repository.passwordReset(body: event.body);
        yield result.fold((l) => PasswordResetErrorState(errorModel: l),
            (r) => PasswordResetSuccessState(successModel: r));
      }
    }
  }
}
