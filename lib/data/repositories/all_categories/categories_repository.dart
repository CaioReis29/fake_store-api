import 'package:dio/dio.dart';
import 'package:fake_store_api/core/utils/endpoints.dart';

class CategoriesRepository {
  Dio dio = Dio();

  Future<List<String>> getAllCategories() async {
      final res = await dio.get(Endpoints.categories);

      if (res.statusCode == 200) {
        final List<dynamic> categories = res.data;

        return categories.map((categorie) => categorie.toString()).toList();
      } else {
        return [];
      }

  }
}
