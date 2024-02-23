// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(List<Product>? products) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(List<Product>? products)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(List<Product>? products)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProductsState value) initial,
    required TResult Function(LoadingProductsState value) loading,
    required TResult Function(ErrorProductsState value) error,
    required TResult Function(SuccessProductsState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductsState value)? initial,
    TResult? Function(LoadingProductsState value)? loading,
    TResult? Function(ErrorProductsState value)? error,
    TResult? Function(SuccessProductsState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductsState value)? initial,
    TResult Function(LoadingProductsState value)? loading,
    TResult Function(ErrorProductsState value)? error,
    TResult Function(SuccessProductsState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialProductsStateImplCopyWith<$Res> {
  factory _$$InitialProductsStateImplCopyWith(_$InitialProductsStateImpl value,
          $Res Function(_$InitialProductsStateImpl) then) =
      __$$InitialProductsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialProductsStateImpl>
    implements _$$InitialProductsStateImplCopyWith<$Res> {
  __$$InitialProductsStateImplCopyWithImpl(_$InitialProductsStateImpl _value,
      $Res Function(_$InitialProductsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialProductsStateImpl implements InitialProductsState {
  const _$InitialProductsStateImpl();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialProductsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(List<Product>? products) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(List<Product>? products)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(List<Product>? products)? success,
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
    required TResult Function(InitialProductsState value) initial,
    required TResult Function(LoadingProductsState value) loading,
    required TResult Function(ErrorProductsState value) error,
    required TResult Function(SuccessProductsState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductsState value)? initial,
    TResult? Function(LoadingProductsState value)? loading,
    TResult? Function(ErrorProductsState value)? error,
    TResult? Function(SuccessProductsState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductsState value)? initial,
    TResult Function(LoadingProductsState value)? loading,
    TResult Function(ErrorProductsState value)? error,
    TResult Function(SuccessProductsState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProductsState implements ProductsState {
  const factory InitialProductsState() = _$InitialProductsStateImpl;
}

/// @nodoc
abstract class _$$LoadingProductsStateImplCopyWith<$Res> {
  factory _$$LoadingProductsStateImplCopyWith(_$LoadingProductsStateImpl value,
          $Res Function(_$LoadingProductsStateImpl) then) =
      __$$LoadingProductsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$LoadingProductsStateImpl>
    implements _$$LoadingProductsStateImplCopyWith<$Res> {
  __$$LoadingProductsStateImplCopyWithImpl(_$LoadingProductsStateImpl _value,
      $Res Function(_$LoadingProductsStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingProductsStateImpl implements LoadingProductsState {
  const _$LoadingProductsStateImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingProductsStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(List<Product>? products) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(List<Product>? products)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(List<Product>? products)? success,
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
    required TResult Function(InitialProductsState value) initial,
    required TResult Function(LoadingProductsState value) loading,
    required TResult Function(ErrorProductsState value) error,
    required TResult Function(SuccessProductsState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductsState value)? initial,
    TResult? Function(LoadingProductsState value)? loading,
    TResult? Function(ErrorProductsState value)? error,
    TResult? Function(SuccessProductsState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductsState value)? initial,
    TResult Function(LoadingProductsState value)? loading,
    TResult Function(ErrorProductsState value)? error,
    TResult Function(SuccessProductsState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProductsState implements ProductsState {
  const factory LoadingProductsState() = _$LoadingProductsStateImpl;
}

/// @nodoc
abstract class _$$ErrorProductsStateImplCopyWith<$Res> {
  factory _$$ErrorProductsStateImplCopyWith(_$ErrorProductsStateImpl value,
          $Res Function(_$ErrorProductsStateImpl) then) =
      __$$ErrorProductsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Object exception, StackTrace stackTrace});
}

/// @nodoc
class __$$ErrorProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ErrorProductsStateImpl>
    implements _$$ErrorProductsStateImplCopyWith<$Res> {
  __$$ErrorProductsStateImplCopyWithImpl(_$ErrorProductsStateImpl _value,
      $Res Function(_$ErrorProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
    Object? stackTrace = null,
  }) {
    return _then(_$ErrorProductsStateImpl(
      exception: null == exception ? _value.exception : exception,
      stackTrace: null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$ErrorProductsStateImpl implements ErrorProductsState {
  const _$ErrorProductsStateImpl(
      {required this.exception, required this.stackTrace});

  @override
  final Object exception;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ProductsState.error(exception: $exception, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorProductsStateImpl &&
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
  _$$ErrorProductsStateImplCopyWith<_$ErrorProductsStateImpl> get copyWith =>
      __$$ErrorProductsStateImplCopyWithImpl<_$ErrorProductsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(List<Product>? products) success,
  }) {
    return error(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(List<Product>? products)? success,
  }) {
    return error?.call(exception, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(List<Product>? products)? success,
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
    required TResult Function(InitialProductsState value) initial,
    required TResult Function(LoadingProductsState value) loading,
    required TResult Function(ErrorProductsState value) error,
    required TResult Function(SuccessProductsState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductsState value)? initial,
    TResult? Function(LoadingProductsState value)? loading,
    TResult? Function(ErrorProductsState value)? error,
    TResult? Function(SuccessProductsState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductsState value)? initial,
    TResult Function(LoadingProductsState value)? loading,
    TResult Function(ErrorProductsState value)? error,
    TResult Function(SuccessProductsState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProductsState implements ProductsState {
  const factory ErrorProductsState(
      {required final Object exception,
      required final StackTrace stackTrace}) = _$ErrorProductsStateImpl;

  Object get exception;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$$ErrorProductsStateImplCopyWith<_$ErrorProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessProductsStateImplCopyWith<$Res> {
  factory _$$SuccessProductsStateImplCopyWith(_$SuccessProductsStateImpl value,
          $Res Function(_$SuccessProductsStateImpl) then) =
      __$$SuccessProductsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product>? products});
}

/// @nodoc
class __$$SuccessProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$SuccessProductsStateImpl>
    implements _$$SuccessProductsStateImplCopyWith<$Res> {
  __$$SuccessProductsStateImplCopyWithImpl(_$SuccessProductsStateImpl _value,
      $Res Function(_$SuccessProductsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$SuccessProductsStateImpl(
      freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$SuccessProductsStateImpl implements SuccessProductsState {
  const _$SuccessProductsStateImpl(final List<Product>? products)
      : _products = products;

  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessProductsStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessProductsStateImplCopyWith<_$SuccessProductsStateImpl>
      get copyWith =>
          __$$SuccessProductsStateImplCopyWithImpl<_$SuccessProductsStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception, StackTrace stackTrace) error,
    required TResult Function(List<Product>? products) success,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Object exception, StackTrace stackTrace)? error,
    TResult? Function(List<Product>? products)? success,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception, StackTrace stackTrace)? error,
    TResult Function(List<Product>? products)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProductsState value) initial,
    required TResult Function(LoadingProductsState value) loading,
    required TResult Function(ErrorProductsState value) error,
    required TResult Function(SuccessProductsState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductsState value)? initial,
    TResult? Function(LoadingProductsState value)? loading,
    TResult? Function(ErrorProductsState value)? error,
    TResult? Function(SuccessProductsState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductsState value)? initial,
    TResult Function(LoadingProductsState value)? loading,
    TResult Function(ErrorProductsState value)? error,
    TResult Function(SuccessProductsState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessProductsState implements ProductsState {
  const factory SuccessProductsState(final List<Product>? products) =
      _$SuccessProductsStateImpl;

  List<Product>? get products;
  @JsonKey(ignore: true)
  _$$SuccessProductsStateImplCopyWith<_$SuccessProductsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
