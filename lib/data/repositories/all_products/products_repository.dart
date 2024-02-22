import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:fake_store_api/data/dtos/products/products_dto.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';

class ProductsRepository {
  Dio dio = Dio();

  Future<List<ProductsDto>> getAllProducts() async {
    try {
      final res = await dio.get(Endpoints.allProducts);

      if (res.statusCode == 200) {
        final List<dynamic> data = res.data;

        final List<ProductsDto> products =
            data.map((json) => ProductsDto.fromJson(json)).toList();

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
