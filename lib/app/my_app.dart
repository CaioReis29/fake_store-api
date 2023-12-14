import 'package:fake_store_api/screens/auth/sign_in/sign_in_screen.dart';
import 'package:fake_store_api/screens/auth/sign_up/sign_up_screen.dart';
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
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 243, 208, 113),
        textTheme: const TextTheme(
          bodySmall: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 243, 208, 113),
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
        '/products': (context) => const HomeScreen(),
        // '/product_datails': (context) => const HomeScreen(),
        '/sign_in': (context) => const SignInScreen(),
        '/sign_up': (context) => const SignUpScreen(),
      },
    );
  }
}
