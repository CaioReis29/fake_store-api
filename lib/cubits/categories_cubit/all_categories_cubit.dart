import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/repositories/all_categories/categories_repository.dart';
import 'package:fake_store_api/shared/categories/categories_db.dart';

part 'all_categories_state.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState> {
  AllCategoriesCubit() : super(AllCategoriesInitial());
  CategoriesRepository repo = CategoriesRepository();

  Future<void> getAllCategories() async {
    emit(AllCategoriesLoading());
    final CategoriesDB db = CategoriesDB();
    try {
      final List<String> categoriesDB = await db.getCategories();

      if (categoriesDB.isNotEmpty) {
        emit(AllCategoriesSucess(categories: categoriesDB));
      } else {
        final categories = await repo.getAllCategories();
        for (var categorie in categories) {
          await db.insertCategorie(categorie);
        }
        emit(AllCategoriesSucess(categories: categories));
      }
    } catch (e) {
      log(e.toString());
      emit(AllCategoriesFailure());
    }
  }
}
