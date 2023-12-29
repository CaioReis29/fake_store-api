import 'package:fake_store_api/bloc_observer.dart';
import 'package:fake_store_api/cubits/categories_cubit/all_categories_cubit.dart';
import 'package:fake_store_api/cubits/products_cubit/all_products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fake_store_api/app/my_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await ScreenUtil.ensureScreenSize();

  Bloc.observer = SimpleBlocObserver();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AllProductsCubit>(
          create: (context) => AllProductsCubit(),
        ),
        BlocProvider<AllCategoriesCubit>(
          create: (context) => AllCategoriesCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );

  FlutterNativeSplash.remove();
}
