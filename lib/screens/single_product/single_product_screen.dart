import 'package:fake_store_api/components/details_product.dart';
import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/data/products/products.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/screens/single_product/widgets/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingleProductScreen extends StatefulWidget {
  const SingleProductScreen({super.key, required this.product});

  final Product product;

  @override
  State<SingleProductScreen> createState() => _SingleProductScreenState();
}

class _SingleProductScreenState extends State<SingleProductScreen> {
  late final SingleProductCubit cubit;

  @override
  void initState() {
    cubit = SingleProductCubit(SingleProductRepository(), widget.product);
    cubit.getSingleProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: BlocBuilder<SingleProductCubit, SingleProductState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is SingleProductFailure) {
            return const Center(
              child: Text("Product not found"),
            );
          } else if (state is SingleProductLoaging) {
            return const LoadingSingleProduct();
          } else if (state is SingleProductSucess) {
            return DetailsProduct(cubit: cubit);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
