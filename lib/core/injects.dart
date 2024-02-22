import 'package:fake_store_api/cubits/products_cubit/all_products_cubit.dart';
import 'package:fake_store_api/data/repositories/all_products/products_repository.dart';
import 'package:get_it/get_it.dart';

Future<void> setupInject() async {
  await inject.reset();

  inject.registerLazySingleton<ProductsRepository>(() => ProductsRepository());

  inject.registerFactory<AllProductsCubit>(() => AllProductsCubit(inject<ProductsRepository>()));
}

GetIt inject = GetIt.instance;