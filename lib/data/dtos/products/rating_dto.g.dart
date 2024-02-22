// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingDtoImpl _$$RatingDtoImplFromJson(Map<String, dynamic> json) =>
    _$RatingDtoImpl(
      rate: json['rate'] ?? '',
      count: json['count'] as int? ?? 0,
    );

Map<String, dynamic> _$$RatingDtoImplToJson(_$RatingDtoImpl instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'count': instance.count,
    };
