import 'package:fake_store_api/screens/auth/auth_screen.dart';
import 'package:fake_store_api/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fake Store API',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            side: const BorderSide(
              color: Color.fromARGB(255, 243, 208, 113),
            ),
          ),
        ),
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 243, 208, 113),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 243, 208, 113),
          ),
          bodyMedium: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: TextStyle(
            fontSize: 30.sp,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 243, 208, 113),
          ),
          titleMedium: TextStyle(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 243, 208, 113),
          ),
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        // '/product_details': (context) => const SingleProductScreen(),
        '/auth_screen': (context) => const AuthScreen(),
      },
    );
  }
}
