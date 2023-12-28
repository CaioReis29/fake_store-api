import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:fake_store_api/cubits/products_cubit/all_products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesButtons extends StatelessWidget {
  final AllCategoriesCubit categoriesCubit;
  final AllProductsCubit productsCubit;

  const CategoriesButtons({
    super.key,
    required this.categoriesCubit,
    required this.productsCubit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCategoriesCubit, AllCategoriesState>(
      bloc: categoriesCubit,
      builder: (context, state) {
        if (state is AllCategoriesLoading) {
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          );
        } else if (state is AllCategoriesFailure) {
          return const Center(
            child: Text(
              "Categories not found!",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          );
        } else if (state is AllCategoriesSucess) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 10,
            ),
            child: SizedBox(
              height: 30,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ElevatedButton(
                  onPressed: () =>
                      productsCubit.getProductByFilter(state.categories[index]),
                  child: Text(
                    state.categories[index],
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                separatorBuilder: (c, i) => const SizedBox(width: 10),
                itemCount: state.categories.length,
              ),
            ),
          );
        } else {
          return const Center(
            child: Text("Error"),
          );
        }
      },
    );
  }
}
