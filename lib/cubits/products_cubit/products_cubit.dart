import 'dart:developer';
import 'dart:io';

import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:fake_store_api/cubits/products_cubit/products_state.dart';
import 'package:fake_store_api/data/products/products.dart';
import 'package:fake_store_api/data/repositories/all_products/products_repository.dart';
import 'package:fake_store_api/shared/products/products_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.repo, this.db) : super(const ProductsState.initial());

  ProductsRepository repo;

  ProductDB db;

  final TextEditingController searchController = TextEditingController();

  Future<bool> checkInternet() async =>
      await ConnectivityWrapper.instance.isConnected;

  Future<void> getAllProducts() async {
    emit(const ProductsState.loading());

    try {
      final List<Product> productsDB = await db.getProducts();

      bool hasInternet = await checkInternet();

      if (!hasInternet) {
        emit(ProductsState.success(productsDB));
      } else if (productsDB.isNotEmpty) {
        emit(ProductsState.success(productsDB));
      } else if (productsDB.isEmpty ||
          productsDB != await repo.getAllProducts()) {
        Dio dio = Dio();
        final products = await repo.getAllProducts();
        final appDir = await getTemporaryDirectory();

        await Future.wait(products.map((product) async {
          final Response<List<int>> response = await dio.get<List<int>>(
            product.image!,
            options: Options(responseType: ResponseType.bytes),
          );

          final bytes = response.data!;
          final file = File('${appDir.path}/product_${product.id}.png');
          await file.writeAsBytes(bytes);

          product.image = file.path;
        }));

        for (var product in products) {
          db.insertProduct(product);
        }

        emit(ProductsState.success(products));
      }
    } catch (e, s) {
      log(e.toString());
      log(s.toString());

      emit(ProductsState.error(exception: e, stackTrace: s));

      rethrow;
    }
  }

  Future<void> getProductByFilter(String filter) async {
    final products = await db.getProducts();

    final productFilter = products.where((product) => product.category!.toLowerCase().contains( filter.toLowerCase())).toList();

    emit(ProductsState.success(productFilter));
  }

  Future<void> searchProducts(String value) async {
    final products = await db.getProducts();

    if (value.isEmpty) {
      emit(ProductsState.success(products));
    } else {
      final filter = products.where(
        (product) => product.title!.toLowerCase().contains(
              value.toLowerCase(),
            ),
      );
      emit(ProductsState.success(filter.toList()),
      );
    }
  }
}
// import 'dart:developer';
// import 'dart:io';
// import 'package:bloc/bloc.dart';
// import 'package:connectivity_wrapper/connectivity_wrapper.dart';
// import 'package:dio/dio.dart';
// import 'package:fake_store_api/data/products/products.dart';
// import 'package:fake_store_api/data/repositories/all_products/products_repository.dart';
// import 'package:fake_store_api/shared/products/products_db.dart';
// import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';

// part 'all_products_state.dart';

// class AllProductsCubit extends Cubit<AllProductsState> {
//   ProductsRepository repo;

//   AllProductsCubit(this.repo) : super(AllProductsInitial());

//   final ProductDB db = ProductDB();

//   final TextEditingController searchController = TextEditingController();

//   Future<bool> checkInternet() async =>
//       await ConnectivityWrapper.instance.isConnected;

//   Future<void> getAllProducts() async {
//     emit(AllProductsLoading());

//     try {
//       final List<Product> productsDB = await db.getProducts();

//       bool hasInternet = await checkInternet();

//       if (!hasInternet) {
//         emit(AllProductsSucess(products: productsDB));
//       } else if (productsDB.isNotEmpty) {
//         emit(AllProductsSucess(products: productsDB));
//       } else if (productsDB.isEmpty ||
//           productsDB != await repo.getAllProducts()) {
//         Dio dio = Dio();
//         final products = await repo.getAllProducts();
//         final appDir = await getTemporaryDirectory();

//         await Future.wait(products.map((product) async {
//           final Response<List<int>> response = await dio.get<List<int>>(
//             product.image!,
//             options: Options(responseType: ResponseType.bytes),
//           );

//           final bytes = response.data!;
//           final file = File('${appDir.path}/product_${product.id}.png');
//           await file.writeAsBytes(bytes);

//           product.image = file.path;
//         }));

//         for (var product in products) {
//           db.insertProduct(product);
//         }

//         emit(AllProductsSucess(products: products));
//       }
//     } catch (e, s) {
//       log(e.toString());
//       log(s.toString());

//       emit(AllProductsFailure());

//       rethrow;
//     }
//   }

//   Future<void> getProductByFilter(String filter) async {
//     final products = await db.getProducts();

//     final productFilter = products.where((product) => product.category!.toLowerCase().contains( filter.toLowerCase())).toList();

//     emit(AllProductsSucess(products: productFilter));
//   }

//   Future<void> searchProducts(String value) async {
//     final products = await db.getProducts();

//     if (value.isEmpty) {
//       emit(AllProductsSucess(products: products));
//     } else {
//       final filter = products.where(
//         (product) => product.title!.toLowerCase().contains(
//               value.toLowerCase(),
//             ),
//       );
//       emit(
//         AllProductsSucess(
//           products: filter.toList(),
//         ),
//       );
//     }
//   }
// }
