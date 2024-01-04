import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/shared/products/products_db.dart';

part 'single_product_state.dart';

class SingleProductCubit extends Cubit<SingleProductState> {
  SingleProductCubit(this.repo, this.product) : super(SingleProductInitial());

  SingleProductRepository repo;
  Products product;

  Future<bool> checkInternet() async =>
      await ConnectivityWrapper.instance.isConnected;

  Future<void> getSingleProduct() async {
    ProductDB db = ProductDB();
    List<Products> products = await db.getProducts();
    bool hasInternet = await checkInternet();

    emit(SingleProductLoaging());
    try {
      if (hasInternet) {
        final result = await repo.getSingleProduct(product.id!);
        emit(SingleProductSucess(result));
      } else if (products.isEmpty) {
        final result = await repo.getSingleProduct(product.id!);
        emit(SingleProductSucess(result));
      } else {
        Products? productDB = await db.getSingleProduct(product.id!);
        emit(SingleProductSucess(productDB!));
      }
    } catch (e) {
      log(e.toString());
      emit(SingleProductFailure());
    }
  }
}
