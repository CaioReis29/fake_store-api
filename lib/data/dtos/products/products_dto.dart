import 'package:fake_store_api/data/dtos/products/rating_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_dto.freezed.dart';
part 'products_dto.g.dart';

@freezed
class ProductsDto with _$ProductsDto {
  factory ProductsDto({
    @Default(0) int? id,
    @Default('') String? title,
    @Default('') dynamic price,
    @Default('') String? description,
    @Default('') String? category,
    @Default('') String? image,
    RatingDto? rating,
  }) = _ProductsDto;
  factory ProductsDto.fromJson(Map<String, dynamic> json) => _$ProductsDtoFromJson(json);
}