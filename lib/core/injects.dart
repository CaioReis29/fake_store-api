import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:fake_store_api/cubits/products_cubit/products_cubit.dart';
import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/data/repositories/all_categories/categories_repository.dart';
import 'package:fake_store_api/data/repositories/all_products/products_repository.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/shared/categories/categories_db.dart';
import 'package:fake_store_api/shared/products/products_db.dart';
import 'package:get_it/get_it.dart';

Future<void> setupInject() async {
  await inject.reset();

  inject.registerLazySingleton<ProductsRepository>(() => ProductsRepository());

  inject.registerLazySingleton<SingleProductRepository>(() => SingleProductRepository());

  inject.registerLazySingleton<CategoriesRepository>(() => CategoriesRepository());

  inject.registerLazySingleton<ProductDB>(() => ProductDB());

  inject.registerLazySingleton<CategoriesDB>(() => CategoriesDB());

  inject.registerFactory<ProductsCubit>(() => ProductsCubit(inject<ProductsRepository>(), inject<ProductDB>()));

  inject.registerFactory<SingleProductCubit>(() => SingleProductCubit(inject<SingleProductRepository>(), inject<ProductDB>()));

  inject.registerFactory<CategoriesCubit>(() => CategoriesCubit(inject<CategoriesRepository>(), inject<CategoriesDB>()));
}

GetIt inject = GetIt.instance;