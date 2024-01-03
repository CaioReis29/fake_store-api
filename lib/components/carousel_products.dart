import 'dart:io';
import 'package:fake_store_api/common/custom_shimmer.dart';
import 'package:fake_store_api/cubits/products_cubit/all_products_cubit.dart';
import 'package:fake_store_api/cubits/single_product_cubit/single_product_cubit.dart';
import 'package:fake_store_api/data/repositories/single_product/single_product_repository.dart';
import 'package:fake_store_api/screens/single_product/single_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselProducts extends StatefulWidget {
  const CarouselProducts({
    super.key,
    required this.cubit,
  });

  final AllProductsCubit cubit;

  @override
  State<CarouselProducts> createState() => _CarouselProductsState();
}

class _CarouselProductsState extends State<CarouselProducts> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return BlocBuilder(
      bloc: widget.cubit,
      builder: (context, state) {
        if (state is AllProductsFailure) {
          return SizedBox(
            height: height * 0.35,
            width: width * 0.9,
            child: const Center(
              child: Text("Products not found!"),
            ),
          );
        } else if (state is AllProductsLoading) {
          return Container(
            color: Colors.white,
            height: height * 0.35,
            width: width * 0.9,
            child: GridView.count(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.80,
              children: List.generate(
                10,
                (index) => CustomShimmer(
                  height: height * 0.35,
                  width: width * 0.9,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          );
        } else if (state is AllProductsSucess) {
          return Column(
            children: [
              SizedBox(
                height: height * 0.42,
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.file(
                              File(state.products[index].image!),
                              fit: BoxFit.fill,
                              width: MediaQuery.of(context).size.width * 0.45,
                              height: height * 0.25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            state.products[index].title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Theme.of(context).primaryColor,
                              overflow: TextOverflow.clip,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BlocProvider<SingleProductCubit>(
                                create: (context) => SingleProductCubit(
                                  SingleProductRepository(),
                                  state.products[index],
                                ),
                                child: SingleProductScreen(
                                    product: state.products[index]),
                              ),
                            ),
                          ),
                          style: Theme.of(context).elevatedButtonTheme.style,
                          child: Text(
                            "More Details",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Align(
                  alignment: Alignment.center,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    onDotClicked: (index) => pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 700),
                      curve: Curves.easeInOutCirc,
                    ),
                    count: 4,
                    effect: WormEffect(
                      activeDotColor: Theme.of(context).primaryColor,
                      dotColor: Colors.white,
                      dotHeight: 12,
                      dotWidth: 35,
                    ),
                  ),
                ),
              ),
            ],
          );
        } else {
          return SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.35,
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: const Center(
              child: Text("Products not found!"),
            ),
          );
        }
      },
    );
  }
}
