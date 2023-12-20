import 'dart:io';
import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

import 'package:sqflite/sqflite.dart';

class ProductDB {
  static Database? _database;
  static final ProductDB db = ProductDB._();

  ProductDB._();

  Future<Database?> get database async {
    if (_database != null) return _database;

    _database = await initDB();

    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'products.db');

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Products (
            id INTEGER PRIMARY KEY,
            title TEXT,
            price REAL,
            description TEXT,
            category TEXT,
            image TEXT,
            ratingId INTEGER,
            FOREIGN KEY (ratingId) REFERENCES Rating(id)
          )
        ''');

        await db.execute('''
          CREATE TABLE Rating (
            id INTEGER PRIMARY KEY,
            rate REAL,
            count INTEGER
          )
        ''');
      },
    );
  }

  createProduct(Products newProduct) async {
    final db = await database;
    final res = await db!.insert('Products', newProduct.toMap());

    return res;
  }

  Future<int> deleteAllProducts() async {
    final db = await database;
    final res = await db!.rawDelete('DELETE FROM Products');
    return res;
  }

  Future<List<Products>> getAllProducts() async {
    final db = await database;
    final res = await db!.rawQuery('SELECT * FROM Products');

    List<Products> list =
        res.isNotEmpty ? res.map((e) => Products.fromJson(e)).toList() : [];

    return list;
  }
}
