import 'package:dartz/dartz.dart';
import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';
import 'package:flutter_job_task/resources/api_provider.dart';

class Repository {
  ApiProvider _apiProvider = ApiProvider();

  Future<Either<ErrorModel, SuccessModel>> registerUser({body}) =>
      _apiProvider.registerUser(body: body);

  Future<Either<ErrorModel, SuccessModel>> passwordReset({body}) =>
      _apiProvider.passwordReset(body: body);

  Future<Either<ErrorModel, SuccessModel>> getProfile() =>
      _apiProvider.getProfile();

  Future<Either<ErrorModel, SuccessModel>> uploadPhoto({body}) =>
      _apiProvider.uploadPhoto(body: body);

  Future<Either<ErrorModel, SuccessModel>> updateForm({body}) =>
      _apiProvider.updateForm(body: body);

}
