import 'dart:io';

import 'package:fake_store_api/core/utils/utils_services.dart';
import 'package:fake_store_api/data/products/products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsProduct extends StatelessWidget {
  const DetailsProduct({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final UtilsServices service = UtilsServices();
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: MediaQuery.sizeOf(context).width * 0.85,
          child: Image.file(
            File(product.image!),
            fit: BoxFit.contain,
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
                    product.title!,
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
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        product.category!,
                        style: Theme.of(context).textTheme.bodyMedium,
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
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        service.priceToCurrency(product.price.toDouble()),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Description:",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.description!,
                    style: Theme.of(context).textTheme.bodyMedium,
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
                style: Theme.of(context).elevatedButtonTheme.style,
                icon: Icon(
                  Icons.add_shopping_cart_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                label: Text(
                  "ADD to Cart",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton.icon(
                onPressed: () {},
                style: Theme.of(context).elevatedButtonTheme.style,
                icon: Icon(
                  Icons.shopping_bag_sharp,
                  color: Theme.of(context).primaryColor,
                ),
                label: Text(
                  "Buy",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
