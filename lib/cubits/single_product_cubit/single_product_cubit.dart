
import 'dart:developer';

import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:fake_store_api/cubits/single_product_cubit/single_product_state.dart';
import 'package:fake_store_api/data/products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/shared/products/products_db.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleProductCubit extends Cubit<SingleProductState> {
  SingleProductCubit(this.repo, this.db) : super(const SingleProductState.initial());

  SingleProductRepository repo;
  ProductDB db;

  Future<bool> checkInternet() async =>
    await ConnectivityWrapper.instance.isConnected;

  Future<void> getSingleProduct(Product? product) async {
    ProductDB db = ProductDB();
    List<Product> products = await db.getProducts();
    bool hasInternet = await checkInternet();

    emit(const SingleProductState.loading());
    try {
      if (hasInternet) {
        final result = await repo.getSingleProduct(product!.id!);
        emit(SingleProductState.success(result));
      } else if (products.isEmpty) {
        final result = await repo.getSingleProduct(product!.id!);
        emit(SingleProductState.success(result));
      } else {
        Product? productDB = await db.getSingleProduct(product!.id!);
        emit(SingleProductState.success(productDB!));
      }
    } catch (e, s) {
      log(e.toString());
      emit(SingleProductState.error(exception: e, stackTrace: s));
    }
  }
}