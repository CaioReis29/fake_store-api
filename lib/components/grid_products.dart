import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/screens/single_product/single_product_screen.dart';
import 'package:fake_store_api/utils/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GridProducts extends StatelessWidget {
  const GridProducts({super.key, required this.listProducts});

  final List<Products> listProducts;

  @override
  Widget build(BuildContext context) {
    final UtilsServices service = UtilsServices();
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.53,
      ),
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        final product = listProducts[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.28,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Image.network(
                    product.image!,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                product.title!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white60,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  service.priceToCurrency(product.price.toDouble()),
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider<SingleProductCubit>(
                      create: (context) => SingleProductCubit(
                        SingleProductRepository(),
                        product,
                      ),
                      child: SingleProductScreen(product: product),
                    ),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  side: BorderSide(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                icon: Icon(
                  Icons.local_mall_rounded,
                  color: Theme.of(context).primaryColor,
                ),
                label: Text(
                  "More Details",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
