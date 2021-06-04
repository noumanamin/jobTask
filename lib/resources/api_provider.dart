import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_job_task/models/error_model.dart';
import 'package:flutter_job_task/models/success_model.dart';
import 'package:http/http.dart';

class ApiProvider {
  String token =
      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYmFjNTFjMWYzMDE5NmQ2ZjE4MWM1MjFhYzlmNzM3ZjI5MWI2MGE5NzJmYTAxNTlkZWE2MTk1N2MzNDE0NDVjZTI5ZmQwMmZkNDQwZDM4MDAiLCJpYXQiOjE2MjI3MTMxMjYsIm5iZiI6MTYyMjcxMzEyNiwiZXhwIjoxNjU0MjQ5MTI2LCJzdWIiOiI3Iiwic2NvcGVzIjpbXX0.RXUXECWwry5DK6QnuQqRKHKOStTi9nhi_f1n5mwtX_MxtCfliSZoUqPPqBbh8RzQJOczZSU9jTC3vGV1Is-PbOBDzOfRMYWX7Sa7_HryaN7F1cH8tvWphUwTJrn4LRTGRmDReGJ39yg7OtFIC98wW4tg3U9ZuInLGN2t3OHk1BZheqjjv4jXzrWAODrNF8hvPgLunbVHjhdbIDxexwEfhRH_trVis4NilV_O4ftV8gIh0EN78DI6wMG9n1nj6GP_sQzooobti4W1OAwLqHmQvFxHqF4J3SARIE6l6OtWQNaFDpK1V1oIdipszofXhk3NO0nj4lCebBE8ez7sViQHNRB5dNtxZaYTqJ0pz2FkkINdaxiqhZEzQ4IGD83JLmzs6JHP2MxXaAZZLckS0JA8pFDFx-4F8XmCGuR9leElKLWbaAOhg52bCcUsznNdhQFMXG4P6CPXpilsyDLjM9aD5dGDnsz_9FHTcNgybZffYPOwQmHH-EvMMNHO1DbpNRIkPY-eFO9QGJYyGU8EnKjbdfXLKuWaZK2p6v8JFnjD6YkagWT0JOfD5cLsIP6B7Vbqpe7QCFcwXXN45hxuch2rvnu300LSHJDp71vn__-QmZI-A0i6AU-ckflHs2LJG2pAX-MUiiFlCzOBZNzaRZTY0RO_Kji_Ptt-tv7jSfkaEFs";

  Client _client = Client();

  Future<Either<ErrorModel, SuccessModel>> registerUser({body}) async {
    Response response = await _client.post(
        "http://3.141.55.247/api/password/update",
        body: body,
        encoding: Encoding.getByName("utf-8"));
    var parsedBody = jsonDecode(response.body);

    if (response.statusCode == 200 &&
        parsedBody["message"] == "Password updated successfully.") {
      return right(
          SuccessModel(title: "Success", message: parsedBody["message"]));
    } else {
      return left(ErrorModel(title: "Error"));
    }
  }

  Future<Either<ErrorModel, SuccessModel>> passwordReset({body}) async {
    Response response =
        await _client.post("http://3.141.55.247/api/password/update",
            body: body,
            headers: {
              HttpHeaders.authorizationHeader: token,
              "content-type": "application/x-www-form-urlencoded",
            },
            encoding: Encoding.getByName("utf-8"));
    var parsedBody = jsonDecode(response.body);

    if (response.statusCode == 200 &&
        parsedBody["message"] == "Password updated successfully.") {
      return right(
          SuccessModel(title: "Success", message: parsedBody["message"]));
    } else {
      return left(ErrorModel(title: "Error", message: parsedBody["message"]));
    }
  }

  Future<Either<ErrorModel, SuccessModel>> getProfile() async {
    Response response = await _client.get(
      "http://3.141.55.247/api/profile",
      headers: {
        HttpHeaders.authorizationHeader: token,
        "content-type": "application/x-www-form-urlencoded",
      },
    );
    var parsedBody = jsonDecode(response.body);

    if (response.statusCode == 200 && parsedBody["message"] == "success.") {
      return right(SuccessModel(
          title: "Success", message: "getProfile", data: parsedBody['data']));
    } else {
      return left(ErrorModel(title: "Error", message: parsedBody["message"]));
    }
  }
}
