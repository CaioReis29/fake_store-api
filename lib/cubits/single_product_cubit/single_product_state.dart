import 'package:fake_store_api/data/products/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_product_state.freezed.dart';

@freezed
class SingleProductState with _$SingleProductState {
  const factory SingleProductState.initial() = InitialSingleProductState;

  const factory SingleProductState.loading() = LoadingSingleProductState;

  const factory SingleProductState.error({required Object exception, required StackTrace stackTrace}) = ErrorSingleProductState;

  const factory SingleProductState.success(Product product) = SuccessSingleProductState;

}