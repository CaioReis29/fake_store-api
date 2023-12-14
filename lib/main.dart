import 'package:fake_store_api/cubits/cubit/all_products_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fake_store_api/app/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AllProductsCubit>(
          create: (context) => AllProductsCubit(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
