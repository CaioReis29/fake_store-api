import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/utils/endpoints.dart';

class ProductsRepository {
  Dio dio = Dio();

  Future<List<Products>> getAllProducts() async {
    try {
      final res = await dio.get(Endpoints.allProducts);

      if (res.statusCode == 200) {
        final List<dynamic> data = res.data;

        final List<Products> products =
            data.map((json) => Products.fromJson(json)).toList();

        return products;
      } else {
        throw Exception();
      }
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
