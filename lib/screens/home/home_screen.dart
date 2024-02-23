import 'package:fake_store_api/common/custom_shimmer.dart';
import 'package:fake_store_api/components/carousel_products.dart';
import 'package:fake_store_api/components/categories_buttons.dart';
import 'package:fake_store_api/components/grid_products.dart';
import 'package:fake_store_api/components/my_drawer.dart';
import 'package:fake_store_api/components/searchbar_product.dart';
import 'package:fake_store_api/core/injects.dart';
import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:fake_store_api/cubits/products_cubit/products_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fake_store_api/core/utils/utils_services.dart';
import '../../cubits/products_cubit/products_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final productsCubit = inject<ProductsCubit>();
  final categoryCubit = inject<CategoriesCubit>();

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
        centerTitle: true,
        title: Row(
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: Hero(
                tag: 'assets/fake_store_logo.png',
                child: Image.asset('assets/fake_store_logo.png'),
              ),
            ),
            Text('Fake Store',style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          SearchbarProduct(cubit: productsCubit),
          Expanded(
            child: BlocBuilder<ProductsCubit, ProductsState>(
              bloc: productsCubit,
              builder: (context, state) => state.maybeWhen(
                loading: () => GridView.count(
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
                  ),
                error: (exception, stackTrace) => const Center(child: Text("Products not found!",style: TextStyle(color: Colors.red))),
                success: (products) => RefreshIndicator(
                    color: Theme.of(context).primaryColor,
                    backgroundColor: Colors.white,
                    displacement: 4,
                    onRefresh: productsCubit.getAllProducts,
                    child: CustomScrollView(
                      scrollDirection: Axis.vertical,
                      slivers: [
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("New Products", style: Theme.of(context).textTheme.titleLarge),
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: CarouselProducts(
                              cubit: productsCubit,
                            ),
                          ),
                        ),
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
                          child: CategoriesButtons(
                            categoriesCubit: categoryCubit,
                            productsCubit: productsCubit,
                          ),
                        ),
                        GridProducts(listProducts: products!),
                      ],
                    ),
                  ),
                orElse: () => const Center(child: Text("Error!")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
