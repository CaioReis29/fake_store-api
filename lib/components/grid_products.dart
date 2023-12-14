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
        childAspectRatio: 0.53,
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
                fontSize: 20,
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
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
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
        );
      },
    );
  }
}
