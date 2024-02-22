import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';
import 'package:fake_store_api/data/products/products.dart';

class SingleProductRepository {
  Dio dio = Dio();

  Future<Product> getSingleProduct(int id) async {
    try {
      final res = await dio.get("${Endpoints.allProducts}/$id");

      if (res.statusCode == 200) {
        final product = res.data;

        return Product.fromJson(product);
      } else {
        throw Exception();
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
