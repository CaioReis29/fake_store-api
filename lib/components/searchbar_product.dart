import 'package:fake_store_api/cubits/products_cubit/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchbarProduct extends StatelessWidget {
  const SearchbarProduct({
    super.key,
    required this.cubit,
  });

  final ProductsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.sizeOf(context).width * 0.9,
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
            prefixIcon: const Icon(Icons.search),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            labelText: 'Search Products',
            labelStyle: TextStyle(fontSize: 16.sp),
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
