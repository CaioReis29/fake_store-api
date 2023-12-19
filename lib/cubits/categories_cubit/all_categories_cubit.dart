import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fake_store_api/data/repositories/all_categories/categories_repository.dart';

part 'all_categories_state.dart';

class AllCategoriesCubit extends Cubit<AllCategoriesState> {
  AllCategoriesCubit() : super(AllCategoriesInitial());
  CategoriesRepository repo = CategoriesRepository();

  Future<void> getAllCategories() async {
    emit(AllCategoriesLoading());
    try {
      final categories = await repo.getAllCategories();
      emit(AllCategoriesSucess(categories: categories));
    } catch (e) {
      log(e.toString());
      emit(AllCategoriesFailure());
    }
  }
}
