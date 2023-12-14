import 'package:fake_store_api/cubits/products_cubit/all_products_cubit.dart';
import 'package:flutter/material.dart';

class SearchbarProduct extends StatelessWidget {
  const SearchbarProduct({
    super.key,
    required this.cubit,
  });

  final AllProductsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextFormField(
          controller: cubit.searchController,
          onChanged: (value) {
            final searchText = cubit.searchController.text;
            cubit.searchProducts(searchText);
          },
          onFieldSubmitted: (value) =>
              cubit.searchProducts(cubit.searchController.text),
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            labelText: 'Search Products',
            labelStyle: const TextStyle(fontSize: 16),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ),
    );
  }
}
