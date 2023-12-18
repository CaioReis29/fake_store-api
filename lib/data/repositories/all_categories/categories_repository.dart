import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fake_store_api/utils/endpoints.dart';

class CategoriesRepository {
  Dio dio = Dio();

  Future<List<String>> getAllCategories() async {
    try {
      final res = await dio.get(Endpoints.categories);

      if (res.statusCode == 200) {
        final List<dynamic> categories = res.data;

        if (categories is List<String>) {
          return categories;
        } else {
          return [];
        }
      } else {
        return [];
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
