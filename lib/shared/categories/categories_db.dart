import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class CategoriesDB {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'categories.db');

    return await openDatabase(
      path,
      version: 1,
      onConfigure: (db) async => await db.execute('PRAGMA foreign_keys = ON'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE categories (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            categorie TEXT NOT NULL UNIQUE
          )
        ''');
      },
    );
  }

  Future<void> insertCategorie(String categorie) async {
    final Database db = await database;

    await db.insert(
      'categories',
      {'categorie': categorie},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<String>> getCategories() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('categories');
    return List.generate(maps.length, (index) {
      maps[index]['id'];
      return maps[index]['categorie'] as String;
    });
  }
}
