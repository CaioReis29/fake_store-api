part of 'single_product_cubit.dart';

abstract class SingleProductState {}

final class SingleProductInitial extends SingleProductState {}

final class SingleProductFailure extends SingleProductState {}

final class SingleProductLoaging extends SingleProductState {}

final class SingleProductSucess extends SingleProductState {
  final Products product;

  SingleProductSucess(this.product);
}
