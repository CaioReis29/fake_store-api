// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RatingDto _$RatingDtoFromJson(Map<String, dynamic> json) {
  return _RatingDto.fromJson(json);
}

/// @nodoc
mixin _$RatingDto {
  dynamic get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDtoCopyWith<RatingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDtoCopyWith<$Res> {
  factory $RatingDtoCopyWith(RatingDto value, $Res Function(RatingDto) then) =
      _$RatingDtoCopyWithImpl<$Res, RatingDto>;
  @useResult
  $Res call({dynamic rate, int count});
}

/// @nodoc
class _$RatingDtoCopyWithImpl<$Res, $Val extends RatingDto>
    implements $RatingDtoCopyWith<$Res> {
  _$RatingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingDtoImplCopyWith<$Res>
    implements $RatingDtoCopyWith<$Res> {
  factory _$$RatingDtoImplCopyWith(
          _$RatingDtoImpl value, $Res Function(_$RatingDtoImpl) then) =
      __$$RatingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic rate, int count});
}

/// @nodoc
class __$$RatingDtoImplCopyWithImpl<$Res>
    extends _$RatingDtoCopyWithImpl<$Res, _$RatingDtoImpl>
    implements _$$RatingDtoImplCopyWith<$Res> {
  __$$RatingDtoImplCopyWithImpl(
      _$RatingDtoImpl _value, $Res Function(_$RatingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rate = freezed,
    Object? count = null,
  }) {
    return _then(_$RatingDtoImpl(
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingDtoImpl implements _RatingDto {
  _$RatingDtoImpl({this.rate = '', this.count = 0});

  factory _$RatingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingDtoImplFromJson(json);

  @override
  @JsonKey()
  final dynamic rate;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'RatingDto(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingDtoImpl &&
            const DeepCollectionEquality().equals(other.rate, rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rate), count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      __$$RatingDtoImplCopyWithImpl<_$RatingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingDtoImplToJson(
      this,
    );
  }
}

abstract class _RatingDto implements RatingDto {
  factory _RatingDto({final dynamic rate, final int count}) = _$RatingDtoImpl;

  factory _RatingDto.fromJson(Map<String, dynamic> json) =
      _$RatingDtoImpl.fromJson;

  @override
  dynamic get rate;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$RatingDtoImplCopyWith<_$RatingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
