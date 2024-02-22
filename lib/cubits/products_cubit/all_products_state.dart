part of 'all_products_cubit.dart';

abstract class AllProductsState {}

final class AllProductsInitial extends AllProductsState {}

final class AllProductsLoading extends AllProductsState {}

final class AllProductsFailure extends AllProductsState {}

final class AllProductsSucess extends AllProductsState {
  List<ProductsDto> products;
  AllProductsSucess({required this.products});
}
