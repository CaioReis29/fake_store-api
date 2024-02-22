import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';

class SignUpRepository {
  final dio = Dio();

  Future<bool> signUp({
    required String? email,
    required String? username,
    required String? password,
    required String? firstname,
    required String? lastname,
    required String? city,
    required String? street,
    required int? number,
    required String? zipcode,
    required String? lat,
    required String? long,
    required String? phone,
  }) async {
    Response response;

    response = await dio.post(Endpoints.signUpUrl, data: {
      "email": email,
      "username": username,
      "password": password,
      "name": {
        "firstName": firstname,
        "lastName": lastname,
      },
      "adress": {
        "city": city,
        "street": street,
        "number": number,
        "zipCode": zipcode,
        "geolocation": {
          "lat": lat,
          "long": long,
        },
      },
      "phone": phone,
    });
    if (response.statusCode != 200) {
      throw HttpException(response.data);
    }
    return true;
  }
}
