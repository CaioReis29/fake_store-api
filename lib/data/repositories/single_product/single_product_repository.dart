import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/utils/endpoints.dart';

class SingleProductRepository {
  Dio dio = Dio();

  Future<Products> getSingleProduct(int id) async {
    try {
      final res = await dio.get("${Endpoints.allProducts}/$id");

      if (res.statusCode == 200) {
        final product = res.data;

        return Products.fromJson(product);
      } else {
        throw Exception();
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
