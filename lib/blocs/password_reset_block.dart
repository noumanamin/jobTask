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
  late Data? data;
  PasswordResetBloc(PasswordResetState initialState) : super(initialState);

  @override
  Stream<PasswordResetState> mapEventToState(PasswordResetEvent event) async* {
    if (event is PasswordReset) {
      yield PasswordResetProcessState();
      late Either<ErrorModel, SuccessModel> result;
      if (event.body!['profile'] == "getProfile") {
        result = await _repository.getProfile();
      } else {
        result = await _repository.passwordReset(body: event.body);
      }
      yield result.fold((l) => PasswordResetErrorState(errorModel: l),
          (r) => PasswordResetSuccessState(successModel: r));
    }
  }
}
