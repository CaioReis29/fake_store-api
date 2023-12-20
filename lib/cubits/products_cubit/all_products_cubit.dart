import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/repositories/all_products/products_repository.dart';
import 'package:fake_store_api/shared/product_db/products_db.dart';
import 'package:flutter/material.dart';

part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsState> {
  AllProductsCubit() : super(AllProductsInitial());

  ProductsRepository repo = ProductsRepository();

  final TextEditingController searchController = TextEditingController();

  Future<void> getAllProducts() async {
    emit(AllProductsLoading());
    final result = await repo.getAllProducts();
    for (var product in result) {
      await ProductDB.db.createProduct(product);
    }
    try {
      emit(AllProductsSucess(products: result));
    } catch (e) {
      log(e.toString());
      emit(AllProductsFailure());
    }
  }

  Future<void> getProductByFilter(String filter) async {
    final result = await repo.getAllProducts();

    final productFilter = result
        .where(
          (product) => product.category!.toLowerCase().contains(
                filter.toLowerCase(),
              ),
        )
        .toList();

    emit(AllProductsSucess(products: productFilter));
  }

  Future<void> searchProducts(String value) async {
    final result = await repo.getAllProducts();
    if (value.isEmpty) {
      emit(AllProductsSucess(products: result));
    } else {
      final filter = result.where(
        (product) => product.title!.toLowerCase().contains(
              value.toLowerCase(),
            ),
      );
      emit(
        AllProductsSucess(
          products: filter.toList(),
        ),
      );
    }
  }
}
