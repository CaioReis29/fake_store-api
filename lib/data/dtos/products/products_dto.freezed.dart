// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductsDto _$ProductsDtoFromJson(Map<String, dynamic> json) {
  return _ProductsDto.fromJson(json);
}

/// @nodoc
mixin _$ProductsDto {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  dynamic get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  RatingDto? get rating => throw _privateConstructorUsedError;

  set image(String? newImage) {
  image = newImage;
}

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsDtoCopyWith<ProductsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsDtoCopyWith<$Res> {
  factory $ProductsDtoCopyWith(
          ProductsDto value, $Res Function(ProductsDto) then) =
      _$ProductsDtoCopyWithImpl<$Res, ProductsDto>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      dynamic price,
      String? description,
      String? category,
      String? image,
      RatingDto? rating});

  $RatingDtoCopyWith<$Res>? get rating;
}

/// @nodoc
class _$ProductsDtoCopyWithImpl<$Res, $Val extends ProductsDto>
    implements $ProductsDtoCopyWith<$Res> {
  _$ProductsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingDtoCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $RatingDtoCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsDtoImplCopyWith<$Res>
    implements $ProductsDtoCopyWith<$Res> {
  factory _$$ProductsDtoImplCopyWith(
          _$ProductsDtoImpl value, $Res Function(_$ProductsDtoImpl) then) =
      __$$ProductsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      dynamic price,
      String? description,
      String? category,
      String? image,
      RatingDto? rating});

  @override
  $RatingDtoCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$ProductsDtoImplCopyWithImpl<$Res>
    extends _$ProductsDtoCopyWithImpl<$Res, _$ProductsDtoImpl>
    implements _$$ProductsDtoImplCopyWith<$Res> {
  __$$ProductsDtoImplCopyWithImpl(
      _$ProductsDtoImpl _value, $Res Function(_$ProductsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$ProductsDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as RatingDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsDtoImpl implements _ProductsDto {
  _$ProductsDtoImpl(
      {this.id = 0,
      this.title = '',
      this.price = '',
      this.description = '',
      this.category = '',
      this.image = '',
      this.rating});

  factory _$ProductsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsDtoImplFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final dynamic price;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? category;
  @override
  @JsonKey()
  final String? image;
  @override
  final RatingDto? rating;

  @override
  String toString() {
    return 'ProductsDto(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      const DeepCollectionEquality().hash(price),
      description,
      category,
      image,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
      __$$ProductsDtoImplCopyWithImpl<_$ProductsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsDtoImplToJson(
      this,
    );
  }
  
  @override
  set image(String? newImage) {
    image = newImage;
  }
}

abstract class _ProductsDto implements ProductsDto {
  factory _ProductsDto(
      {final int? id,
      final String? title,
      final dynamic price,
      final String? description,
      final String? category,
      final String? image,
      final RatingDto? rating}) = _$ProductsDtoImpl;

  factory _ProductsDto.fromJson(Map<String, dynamic> json) =
      _$ProductsDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  dynamic get price;
  @override
  String? get description;
  @override
  String? get category;
  @override
  String? get image;
  @override
  RatingDto? get rating;
  @override
  @JsonKey(ignore: true)
  _$$ProductsDtoImplCopyWith<_$ProductsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
