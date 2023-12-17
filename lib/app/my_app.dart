import 'package:fake_store_api/screens/auth/auth_screen.dart';
import 'package:fake_store_api/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
            side: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 243, 208, 113),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          bodyMedium: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 243, 208, 113),
          ),
          titleMedium: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 243, 208, 113),
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
