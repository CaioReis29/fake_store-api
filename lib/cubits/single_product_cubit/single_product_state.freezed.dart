// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'single_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SingleProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(Product product) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(Product product)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(Product product)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSingleProductState value) initial,
    required TResult Function(LoadingSingleProductState value) loading,
    required TResult Function(ErrorSingleProductState value) error,
    required TResult Function(SuccessSingleProductState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSingleProductState value)? initial,
    TResult? Function(LoadingSingleProductState value)? loading,
    TResult? Function(ErrorSingleProductState value)? error,
    TResult? Function(SuccessSingleProductState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSingleProductState value)? initial,
    TResult Function(LoadingSingleProductState value)? loading,
    TResult Function(ErrorSingleProductState value)? error,
    TResult Function(SuccessSingleProductState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleProductStateCopyWith<$Res> {
  factory $SingleProductStateCopyWith(
          SingleProductState value, $Res Function(SingleProductState) then) =
      _$SingleProductStateCopyWithImpl<$Res, SingleProductState>;
}

/// @nodoc
class _$SingleProductStateCopyWithImpl<$Res, $Val extends SingleProductState>
    implements $SingleProductStateCopyWith<$Res> {
  _$SingleProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSingleProductStateImplCopyWith<$Res> {
  factory _$$InitialSingleProductStateImplCopyWith(
          _$InitialSingleProductStateImpl value,
          $Res Function(_$InitialSingleProductStateImpl) then) =
      __$$InitialSingleProductStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSingleProductStateImplCopyWithImpl<$Res>
    extends _$SingleProductStateCopyWithImpl<$Res,
        _$InitialSingleProductStateImpl>
    implements _$$InitialSingleProductStateImplCopyWith<$Res> {
  __$$InitialSingleProductStateImplCopyWithImpl(
      _$InitialSingleProductStateImpl _value,
      $Res Function(_$InitialSingleProductStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSingleProductStateImpl implements InitialSingleProductState {
  const _$InitialSingleProductStateImpl();

  @override
  String toString() {
    return 'SingleProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialSingleProductStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(Product product) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(Product product)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(Product product)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSingleProductState value) initial,
    required TResult Function(LoadingSingleProductState value) loading,
    required TResult Function(ErrorSingleProductState value) error,
    required TResult Function(SuccessSingleProductState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSingleProductState value)? initial,
    TResult? Function(LoadingSingleProductState value)? loading,
    TResult? Function(ErrorSingleProductState value)? error,
    TResult? Function(SuccessSingleProductState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSingleProductState value)? initial,
    TResult Function(LoadingSingleProductState value)? loading,
    TResult Function(ErrorSingleProductState value)? error,
    TResult Function(SuccessSingleProductState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSingleProductState implements SingleProductState {
  const factory InitialSingleProductState() = _$InitialSingleProductStateImpl;
}

/// @nodoc
abstract class _$$LoadingSingleProductStateImplCopyWith<$Res> {
  factory _$$LoadingSingleProductStateImplCopyWith(
          _$LoadingSingleProductStateImpl value,
          $Res Function(_$LoadingSingleProductStateImpl) then) =
      __$$LoadingSingleProductStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSingleProductStateImplCopyWithImpl<$Res>
    extends _$SingleProductStateCopyWithImpl<$Res,
        _$LoadingSingleProductStateImpl>
    implements _$$LoadingSingleProductStateImplCopyWith<$Res> {
  __$$LoadingSingleProductStateImplCopyWithImpl(
      _$LoadingSingleProductStateImpl _value,
      $Res Function(_$LoadingSingleProductStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSingleProductStateImpl implements LoadingSingleProductState {
  const _$LoadingSingleProductStateImpl();

  @override
  String toString() {
    return 'SingleProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSingleProductStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(Product product) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(Product product)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(Product product)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSingleProductState value) initial,
    required TResult Function(LoadingSingleProductState value) loading,
    required TResult Function(ErrorSingleProductState value) error,
    required TResult Function(SuccessSingleProductState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSingleProductState value)? initial,
    TResult? Function(LoadingSingleProductState value)? loading,
    TResult? Function(ErrorSingleProductState value)? error,
    TResult? Function(SuccessSingleProductState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSingleProductState value)? initial,
    TResult Function(LoadingSingleProductState value)? loading,
    TResult Function(ErrorSingleProductState value)? error,
    TResult Function(SuccessSingleProductState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSingleProductState implements SingleProductState {
  const factory LoadingSingleProductState() = _$LoadingSingleProductStateImpl;
}

/// @nodoc
abstract class _$$ErrorSingleProductStateImplCopyWith<$Res> {
  factory _$$ErrorSingleProductStateImplCopyWith(
          _$ErrorSingleProductStateImpl value,
          $Res Function(_$ErrorSingleProductStateImpl) then) =
      __$$ErrorSingleProductStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorSingleProductStateImplCopyWithImpl<$Res>
    extends _$SingleProductStateCopyWithImpl<$Res,
        _$ErrorSingleProductStateImpl>
    implements _$$ErrorSingleProductStateImplCopyWith<$Res> {
  __$$ErrorSingleProductStateImplCopyWithImpl(
      _$ErrorSingleProductStateImpl _value,
      $Res Function(_$ErrorSingleProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorSingleProductStateImpl(
      exception: null == exception ? _value.exception : exception,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorSingleProductStateImpl implements ErrorSingleProductState {
  const _$ErrorSingleProductStateImpl(
      {required this.exception, required this.stackTrace});

  @override
  final Object exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'SingleProductState.error(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSingleProductStateImpl &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exception), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSingleProductStateImplCopyWith<_$ErrorSingleProductStateImpl>
      get copyWith => __$$ErrorSingleProductStateImplCopyWithImpl<
          _$ErrorSingleProductStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(Product product) success,
  }) {
    return error(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(Product product)? success,
  }) {
    return error?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(Product product)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSingleProductState value) initial,
    required TResult Function(LoadingSingleProductState value) loading,
    required TResult Function(ErrorSingleProductState value) error,
    required TResult Function(SuccessSingleProductState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSingleProductState value)? initial,
    TResult? Function(LoadingSingleProductState value)? loading,
    TResult? Function(ErrorSingleProductState value)? error,
    TResult? Function(SuccessSingleProductState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSingleProductState value)? initial,
    TResult Function(LoadingSingleProductState value)? loading,
    TResult Function(ErrorSingleProductState value)? error,
    TResult Function(SuccessSingleProductState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSingleProductState implements SingleProductState {
  const factory ErrorSingleProductState(
      {required final Object exception,
      required final StackTrace stackTrace}) = _$ErrorSingleProductStateImpl;

  Object get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorSingleProductStateImplCopyWith<_$ErrorSingleProductStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessSingleProductStateImplCopyWith<$Res> {
  factory _$$SuccessSingleProductStateImplCopyWith(
          _$SuccessSingleProductStateImpl value,
          $Res Function(_$SuccessSingleProductStateImpl) then) =
      __$$SuccessSingleProductStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$SuccessSingleProductStateImplCopyWithImpl<$Res>
    extends _$SingleProductStateCopyWithImpl<$Res,
        _$SuccessSingleProductStateImpl>
    implements _$$SuccessSingleProductStateImplCopyWith<$Res> {
  __$$SuccessSingleProductStateImplCopyWithImpl(
      _$SuccessSingleProductStateImpl _value,
      $Res Function(_$SuccessSingleProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SuccessSingleProductStateImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$SuccessSingleProductStateImpl implements SuccessSingleProductState {
  const _$SuccessSingleProductStateImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'SingleProductState.success(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSingleProductStateImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSingleProductStateImplCopyWith<_$SuccessSingleProductStateImpl>
      get copyWith => __$$SuccessSingleProductStateImplCopyWithImpl<
          _$SuccessSingleProductStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(Product product) success,
  }) {
    return success(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(Product product)? success,
  }) {
    return success?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(Product product)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSingleProductState value) initial,
    required TResult Function(LoadingSingleProductState value) loading,
    required TResult Function(ErrorSingleProductState value) error,
    required TResult Function(SuccessSingleProductState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSingleProductState value)? initial,
    TResult? Function(LoadingSingleProductState value)? loading,
    TResult? Function(ErrorSingleProductState value)? error,
    TResult? Function(SuccessSingleProductState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSingleProductState value)? initial,
    TResult Function(LoadingSingleProductState value)? loading,
    TResult Function(ErrorSingleProductState value)? error,
    TResult Function(SuccessSingleProductState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessSingleProductState implements SingleProductState {
  const factory SuccessSingleProductState(final Product product) =
      _$SuccessSingleProductStateImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$SuccessSingleProductStateImplCopyWith<_$SuccessSingleProductStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
