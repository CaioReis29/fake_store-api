import 'package:fake_store_api/data/repositories/products_repository.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductsRepository repo = ProductsRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => repo.getAllProducts(),
          child: const Text("Click"),
        ),
      ),
    );
  }
}
