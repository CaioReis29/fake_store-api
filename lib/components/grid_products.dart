import 'dart:io';
import 'package:connectivity_wrapper/connectivity_wrapper.dart';
import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/data/products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/screens/single_product/single_product_screen.dart';
import 'package:fake_store_api/core/utils/utils_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridProducts extends StatefulWidget {
  const GridProducts({super.key, required this.listProducts});

  final List<Product> listProducts;

  @override
  State<GridProducts> createState() => _GridProductsState();
}

class _GridProductsState extends State<GridProducts> {
  Future<bool> checkInternet() async =>
      await ConnectivityWrapper.instance.isConnected;

  @override
  Widget build(BuildContext context) {
    final UtilsServices service = UtilsServices();

    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.50,
      ),
      itemCount: widget.listProducts.length,
      itemBuilder: (context, index) {
        final product = widget.listProducts[index];
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
                  child: Image.file(
                    File(product.image!),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Text(
                product.title!,
                style: TextStyle(
                  fontSize: 18.sp,
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
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp,
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
