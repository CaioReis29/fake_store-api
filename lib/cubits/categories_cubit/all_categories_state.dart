import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_categories_state.freezed.dart';

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = InitialCategoriesState;

  const factory CategoriesState.loading() = LoadingCategoriesState;

  const factory CategoriesState.error({required Object exception, required StackTrace stackTrace}) = ErrorCategoriesState;

  const factory CategoriesState.success(List<String>? categories) = SuccessCategoriesState;

}