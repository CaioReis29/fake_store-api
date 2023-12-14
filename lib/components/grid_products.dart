import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/utils/utils_services.dart';
import 'package:flutter/material.dart';

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
        childAspectRatio: 0.55,
      ),
      itemCount: listProducts.length,
      itemBuilder: (context, index) {
        final product = listProducts[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.28,
              width: MediaQuery.of(context).size.width / 2.2,
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
                fontSize: 17,
                color: Colors.white60,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              service.priceToCurrency(product.price.toDouble()),
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.local_mall_rounded),
              label: const Text("More Details"),
            ),
          ],
        );
      },
    );
  }
}
