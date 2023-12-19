import 'package:fake_store_api/common/custom_shimmer.dart';
import 'package:fake_store_api/components/grid_products.dart';
import 'package:fake_store_api/components/my_drawer.dart';
import 'package:fake_store_api/components/searchbar_product.dart';
import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_api/utils/utils_services.dart';

import '../../cubits/products_cubit/all_products_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AllProductsCubit productsCubit = AllProductsCubit();
  final AllCategoriesCubit categoryCubit = AllCategoriesCubit();

  final UtilsServices service = UtilsServices();

  @override
  void initState() {
    productsCubit.getAllProducts();
    categoryCubit.getAllCategories();
    super.initState();
  }

  @override
  void dispose() {
    productsCubit.searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fake Store',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          SearchbarProduct(cubit: productsCubit),
          Expanded(
            child: BlocBuilder<AllProductsCubit, AllProductsState>(
              bloc: productsCubit,
              builder: (context, state) {
                if (state is AllProductsLoading) {
                  return GridView.count(
                    physics: const BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.80,
                    children: List.generate(
                      10,
                      (index) => CustomShimmer(
                        height: MediaQuery.sizeOf(context).height * 0.27,
                        width: MediaQuery.of(context).size.width / 2.2,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  );
                } else if (state is AllProductsFailure) {
                  return const Center(
                    child: Text(
                      "Products not found!",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  );
                } else if (state is AllProductsSucess) {
                  return RefreshIndicator(
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Colors.white,
                    displacement: 4,
                    onRefresh: productsCubit.getAllProducts,
                    child: CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              "Products",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: BlocBuilder<AllCategoriesCubit,
                              AllCategoriesState>(
                            bloc: categoryCubit,
                            builder: (context, state) {
                              if (state is AllCategoriesLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
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
                                      itemBuilder: (context, index) =>
                                          ElevatedButton(
                                        onPressed: () =>
                                            productsCubit.getProductByFilter(
                                                state.categories[index]),
                                        child: Text(
                                          state.categories[index],
                                          style: TextStyle(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      separatorBuilder: (c, i) =>
                                          const SizedBox(width: 10),
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
                          ),
                        ),
                        GridProducts(listProducts: state.products),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: Text(
                      "Error!",
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
