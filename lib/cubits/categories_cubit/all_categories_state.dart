part of 'all_categories_cubit.dart';

abstract class AllCategoriesState {}

final class AllCategoriesInitial extends AllCategoriesState {}

final class AllCategoriesFailure extends AllCategoriesState {}

final class AllCategoriesLoading extends AllCategoriesState {}

final class AllCategoriesSucess extends AllCategoriesState {
  final List<String> categories;

  AllCategoriesSucess({required this.categories});
}
