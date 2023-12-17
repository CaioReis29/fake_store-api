import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/utils/utils_services.dart';
import 'package:flutter/material.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key, required this.cubit});

  final SingleProductCubit cubit;

  @override
  Widget build(BuildContext context) {
    final UtilsServices service = UtilsServices();
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width * 0.85,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              cubit.product.image!,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cubit.product.title!,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category:",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        cubit.product.category!,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price:",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        service.priceToCurrency(cubit.product.price!),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Description:",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cubit.product.description!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart_outlined),
                label: const Text("ADD to Cart"),
              ),
              const SizedBox(height: 5),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_sharp),
                label: const Text("Buy"),
              ),
            ],
          ),
        )
      ],
    );
  }
}
