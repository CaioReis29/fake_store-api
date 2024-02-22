import 'package:dio/dio.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';
import 'package:fake_store_api/data/products/products.dart';

class ProductsRepository {
  Dio dio = Dio();

  Future<List<Product>> getAllProducts() async {
      final res = await dio.get(Endpoints.allProducts);

      if (res.statusCode == 200) {
        final List<dynamic> data = res.data;

        final List<Product> products =
            data.map((json) => Product.fromJson(json)).toList();

        return products;
      } else {
        throw Exception();
      }
  }
}
