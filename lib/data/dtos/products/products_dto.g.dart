// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductsDtoImpl _$$ProductsDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductsDtoImpl(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      price: json['price'] ?? '',
      description: json['description'] as String? ?? '',
      category: json['category'] as String? ?? '',
      image: json['image'] as String? ?? '',
      rating: json['rating'] == null
          ? null
          : RatingDto.fromJson(json['rating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductsDtoImplToJson(_$ProductsDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'image': instance.image,
      'rating': instance.rating,
    };
