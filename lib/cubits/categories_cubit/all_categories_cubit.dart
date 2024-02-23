
import 'dart:developer';

import 'package:fake_store_api/cubits/categories_cubit/all_categories_state.dart';
import 'package:fake_store_api/data/repositories/all_categories/categories_repository.dart';
import 'package:fake_store_api/shared/categories/categories_db.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit(this.repo, this.db) : super(const CategoriesState.initial());

  CategoriesRepository repo;
  CategoriesDB db;

  Future<void> getAllCategories() async {
    emit(const CategoriesState.loading());
    try {
      final List<String> categoriesDB = await db.getCategories();

      if (categoriesDB.isNotEmpty) {
        emit(CategoriesState.success(categoriesDB));
      } else {
        final categories = await repo.getAllCategories();
        for (var categorie in categories) {
          await db.insertCategorie(categorie);
        }
        emit(CategoriesState.success(categories));
      }
    } catch (e, s) {
      log(e.toString());
      emit(CategoriesState.error(exception: e, stackTrace: s));
    }
  }
}