import 'package:fake_store_api/data/products/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = InitialProductsState;

  const factory ProductsState.loading() = LoadingProductsState;

  const factory ProductsState.error({required Object exception, required StackTrace stackTrace}) = ErrorProductsState;

  const factory ProductsState.success(List<Product>? products) = SuccessProductsState;

}