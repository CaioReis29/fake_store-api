import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fake_store_api/shared/save_infos.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';

class SignInRepository {
  final dio = Dio();

  Future<bool> login({
    required String username,
    required String pass,
  }) async {
    Response response;

    response = await dio.post(Endpoints.loginUrl, data: {
      "username": username,
      "password": pass,
    });
    if (response.statusCode != 200) {
      throw HttpException(response.data);
    }
    saveInfos(response.data);
    return true;
  }
}
