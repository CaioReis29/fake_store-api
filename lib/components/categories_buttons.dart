import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:fake_store_api/cubits/categories_cubit/all_categories_state.dart';
import 'package:fake_store_api/cubits/products_cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesButtons extends StatelessWidget {
  final CategoriesCubit categoriesCubit;
  final ProductsCubit productsCubit;

  const CategoriesButtons({
    super.key,
    required this.categoriesCubit,
    required this.productsCubit,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoriesCubit, CategoriesState>(
      bloc: categoriesCubit,
      builder: (context, state) => state.maybeWhen(
        loading: () => Center(child: CircularProgressIndicator(color: Theme.of(context).primaryColor)),
        error: (exception, stackTrace) => const Center(child: Text("Categories not found!", style: TextStyle(color: Colors.white))),
        success: (categories) => Padding(
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
                  onPressed: () => productsCubit.getProductByFilter(categories[index]),
                  child: Text(categories[index], style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold)),
                ),
                separatorBuilder: (c, i) => const SizedBox(width: 10),
                itemCount: categories!.length,
              ),
            ),
          ),
        orElse: () => const Center(child: Text("Error"))
      ),
    );
  }
}
