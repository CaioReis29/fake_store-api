import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';

part 'single_product_state.dart';

class SingleProductCubit extends Cubit<SingleProductState> {
  SingleProductCubit(this.repo, this.product) : super(SingleProductInitial());

  SingleProductRepository repo;
  Products product;

  Future<void> getSingleProduct() async {
    emit(SingleProductLoaging());
    try {
      final result = await repo.getSingleProduct(product.id!);
      emit(SingleProductSucess(result));
    } catch (e) {
      log(e.toString());
      emit(SingleProductFailure());
    }
  }
}
