import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/repositories/products_repository.dart';

part 'all_products_state.dart';

class AllProductsCubit extends Cubit<AllProductsState> {
  AllProductsCubit() : super(AllProductsInitial());

  ProductsRepository repo = ProductsRepository();

  Future<void> getAllProducts() async {
    emit(AllProductsLoading());
    try {
      final result = await repo.getAllProducts();
      emit(AllProductsSucess(products: result));
    } catch (e) {
      log(e.toString());
      emit(AllProductsFailure());
    }
  }
}
