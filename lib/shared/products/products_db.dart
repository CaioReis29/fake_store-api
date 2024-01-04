import 'package:fake_store_api/data/models/all_products/products.dart';
import 'package:fake_store_api/data/models/all_products/rating.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class ProductDB {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'products.db');

    return await openDatabase(
      path,
      version: 1,
      readOnly: false,
      onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
      onCreate: (Database db, int version) async {
        await db.execute('''
        CREATE TABLE products(
          id INTEGER PRIMARY KEY,
          title TEXT,
          price REAL,
          description TEXT,
          category TEXT,
          image TEXT,
          rating INTEGER,
          FOREIGN KEY(rating) REFERENCES ratings(id)
        )
      ''');

        await db.execute('''
        CREATE TABLE ratings(
          id INTEGER PRIMARY KEY,
          rate REAL,
          count INTEGER
        )
      ''');
      },
    );
  }

  Future<void> insertProduct(Products product) async {
    final Database db = await database;

    int ratingId = await db.insert('ratings', product.rating!.toMap());

    Map<String, dynamic> productMap = product.toMap();
    productMap['rating'] = ratingId;

    await db.insert(
      'products',
      productMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Products>> getProducts() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('products');
    return List.generate(maps.length, (i) {
      return Products(
        id: maps[i]['id'],
        title: maps[i]['title'],
        price: maps[i]['price'],
        description: maps[i]['description'],
        category: maps[i]['category'],
        image: maps[i]['image'],
        rating: Rating(
          rate: maps[i]['rate'],
          count: maps[i]['count'],
        ),
      );
    });
  }

  Future<Products?> getSingleProduct(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      'products',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Products(
        id: maps[0]['id'],
        title: maps[0]['title'],
        price: maps[0]['price'],
        description: maps[0]['description'],
        category: maps[0]['category'],
        image: maps[0]['image'],
        rating: Rating(
          rate: maps[0]['rate'],
          count: maps[0]['count'],
        ),
      );
    } else {
      Exception();
    }
    return null;
  }

  Future<int> deleteAllProduts() async {
    final db = await database;
    return await db.delete('products');
  }
}
