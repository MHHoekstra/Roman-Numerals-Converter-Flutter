// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'numerals_converter_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumeralsConverterFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumeralsConverterFailureCopyWith<$Res> {
  factory $NumeralsConverterFailureCopyWith(NumeralsConverterFailure value,
          $Res Function(NumeralsConverterFailure) then) =
      _$NumeralsConverterFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements $NumeralsConverterFailureCopyWith<$Res> {
  _$NumeralsConverterFailureCopyWithImpl(this._value, this._then);

  final NumeralsConverterFailure _value;
  // ignore: unused_field
  final $Res Function(NumeralsConverterFailure) _then;
}

/// @nodoc
abstract class _$$InvalidRomanNumeralFailureCopyWith<$Res> {
  factory _$$InvalidRomanNumeralFailureCopyWith(
          _$InvalidRomanNumeralFailure value,
          $Res Function(_$InvalidRomanNumeralFailure) then) =
      __$$InvalidRomanNumeralFailureCopyWithImpl<$Res>;
  $Res call({String numeral});
}

/// @nodoc
class __$$InvalidRomanNumeralFailureCopyWithImpl<$Res>
    extends _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements _$$InvalidRomanNumeralFailureCopyWith<$Res> {
  __$$InvalidRomanNumeralFailureCopyWithImpl(
      _$InvalidRomanNumeralFailure _value,
      $Res Function(_$InvalidRomanNumeralFailure) _then)
      : super(_value, (v) => _then(v as _$InvalidRomanNumeralFailure));

  @override
  _$InvalidRomanNumeralFailure get _value =>
      super._value as _$InvalidRomanNumeralFailure;

  @override
  $Res call({
    Object? numeral = freezed,
  }) {
    return _then(_$InvalidRomanNumeralFailure(
      numeral == freezed
          ? _value.numeral
          : numeral // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidRomanNumeralFailure implements InvalidRomanNumeralFailure {
  const _$InvalidRomanNumeralFailure(this.numeral);

  @override
  final String numeral;

  @override
  String toString() {
    return 'NumeralsConverterFailure.invalidRomanNumeral(numeral: $numeral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidRomanNumeralFailure &&
            const DeepCollectionEquality().equals(other.numeral, numeral));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(numeral));

  @JsonKey(ignore: true)
  @override
  _$$InvalidRomanNumeralFailureCopyWith<_$InvalidRomanNumeralFailure>
      get copyWith => __$$InvalidRomanNumeralFailureCopyWithImpl<
          _$InvalidRomanNumeralFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) {
    return invalidRomanNumeral(numeral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) {
    return invalidRomanNumeral?.call(numeral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (invalidRomanNumeral != null) {
      return invalidRomanNumeral(numeral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) {
    return invalidRomanNumeral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) {
    return invalidRomanNumeral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (invalidRomanNumeral != null) {
      return invalidRomanNumeral(this);
    }
    return orElse();
  }
}

abstract class InvalidRomanNumeralFailure implements NumeralsConverterFailure {
  const factory InvalidRomanNumeralFailure(final String numeral) =
      _$InvalidRomanNumeralFailure;

  String get numeral => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$InvalidRomanNumeralFailureCopyWith<_$InvalidRomanNumeralFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidArabicNumeralCopyWith<$Res> {
  factory _$$InvalidArabicNumeralCopyWith(_$InvalidArabicNumeral value,
          $Res Function(_$InvalidArabicNumeral) then) =
      __$$InvalidArabicNumeralCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidArabicNumeralCopyWithImpl<$Res>
    extends _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements _$$InvalidArabicNumeralCopyWith<$Res> {
  __$$InvalidArabicNumeralCopyWithImpl(_$InvalidArabicNumeral _value,
      $Res Function(_$InvalidArabicNumeral) _then)
      : super(_value, (v) => _then(v as _$InvalidArabicNumeral));

  @override
  _$InvalidArabicNumeral get _value => super._value as _$InvalidArabicNumeral;
}

/// @nodoc

class _$InvalidArabicNumeral implements InvalidArabicNumeral {
  const _$InvalidArabicNumeral();

  @override
  String toString() {
    return 'NumeralsConverterFailure.invalidArabicNumeral()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidArabicNumeral);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) {
    return invalidArabicNumeral();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) {
    return invalidArabicNumeral?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (invalidArabicNumeral != null) {
      return invalidArabicNumeral();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) {
    return invalidArabicNumeral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) {
    return invalidArabicNumeral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (invalidArabicNumeral != null) {
      return invalidArabicNumeral(this);
    }
    return orElse();
  }
}

abstract class InvalidArabicNumeral implements NumeralsConverterFailure {
  const factory InvalidArabicNumeral() = _$InvalidArabicNumeral;
}

/// @nodoc
abstract class _$$ArabicNumeralTooLargeFailureCopyWith<$Res> {
  factory _$$ArabicNumeralTooLargeFailureCopyWith(
          _$ArabicNumeralTooLargeFailure value,
          $Res Function(_$ArabicNumeralTooLargeFailure) then) =
      __$$ArabicNumeralTooLargeFailureCopyWithImpl<$Res>;
  $Res call({int numeral});
}

/// @nodoc
class __$$ArabicNumeralTooLargeFailureCopyWithImpl<$Res>
    extends _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements _$$ArabicNumeralTooLargeFailureCopyWith<$Res> {
  __$$ArabicNumeralTooLargeFailureCopyWithImpl(
      _$ArabicNumeralTooLargeFailure _value,
      $Res Function(_$ArabicNumeralTooLargeFailure) _then)
      : super(_value, (v) => _then(v as _$ArabicNumeralTooLargeFailure));

  @override
  _$ArabicNumeralTooLargeFailure get _value =>
      super._value as _$ArabicNumeralTooLargeFailure;

  @override
  $Res call({
    Object? numeral = freezed,
  }) {
    return _then(_$ArabicNumeralTooLargeFailure(
      numeral == freezed
          ? _value.numeral
          : numeral // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ArabicNumeralTooLargeFailure implements ArabicNumeralTooLargeFailure {
  const _$ArabicNumeralTooLargeFailure(this.numeral);

  @override
  final int numeral;

  @override
  String toString() {
    return 'NumeralsConverterFailure.arabicNumeralTooLarge(numeral: $numeral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArabicNumeralTooLargeFailure &&
            const DeepCollectionEquality().equals(other.numeral, numeral));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(numeral));

  @JsonKey(ignore: true)
  @override
  _$$ArabicNumeralTooLargeFailureCopyWith<_$ArabicNumeralTooLargeFailure>
      get copyWith => __$$ArabicNumeralTooLargeFailureCopyWithImpl<
          _$ArabicNumeralTooLargeFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) {
    return arabicNumeralTooLarge(numeral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) {
    return arabicNumeralTooLarge?.call(numeral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (arabicNumeralTooLarge != null) {
      return arabicNumeralTooLarge(numeral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) {
    return arabicNumeralTooLarge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) {
    return arabicNumeralTooLarge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (arabicNumeralTooLarge != null) {
      return arabicNumeralTooLarge(this);
    }
    return orElse();
  }
}

abstract class ArabicNumeralTooLargeFailure
    implements NumeralsConverterFailure {
  const factory ArabicNumeralTooLargeFailure(final int numeral) =
      _$ArabicNumeralTooLargeFailure;

  int get numeral => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ArabicNumeralTooLargeFailureCopyWith<_$ArabicNumeralTooLargeFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NegativeOrZeroArabicNumeralFailureCopyWith<$Res> {
  factory _$$NegativeOrZeroArabicNumeralFailureCopyWith(
          _$NegativeOrZeroArabicNumeralFailure value,
          $Res Function(_$NegativeOrZeroArabicNumeralFailure) then) =
      __$$NegativeOrZeroArabicNumeralFailureCopyWithImpl<$Res>;
  $Res call({int numeral});
}

/// @nodoc
class __$$NegativeOrZeroArabicNumeralFailureCopyWithImpl<$Res>
    extends _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements _$$NegativeOrZeroArabicNumeralFailureCopyWith<$Res> {
  __$$NegativeOrZeroArabicNumeralFailureCopyWithImpl(
      _$NegativeOrZeroArabicNumeralFailure _value,
      $Res Function(_$NegativeOrZeroArabicNumeralFailure) _then)
      : super(_value, (v) => _then(v as _$NegativeOrZeroArabicNumeralFailure));

  @override
  _$NegativeOrZeroArabicNumeralFailure get _value =>
      super._value as _$NegativeOrZeroArabicNumeralFailure;

  @override
  $Res call({
    Object? numeral = freezed,
  }) {
    return _then(_$NegativeOrZeroArabicNumeralFailure(
      numeral == freezed
          ? _value.numeral
          : numeral // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NegativeOrZeroArabicNumeralFailure
    implements NegativeOrZeroArabicNumeralFailure {
  const _$NegativeOrZeroArabicNumeralFailure(this.numeral);

  @override
  final int numeral;

  @override
  String toString() {
    return 'NumeralsConverterFailure.negativeOrZeroArabicNumeral(numeral: $numeral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NegativeOrZeroArabicNumeralFailure &&
            const DeepCollectionEquality().equals(other.numeral, numeral));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(numeral));

  @JsonKey(ignore: true)
  @override
  _$$NegativeOrZeroArabicNumeralFailureCopyWith<
          _$NegativeOrZeroArabicNumeralFailure>
      get copyWith => __$$NegativeOrZeroArabicNumeralFailureCopyWithImpl<
          _$NegativeOrZeroArabicNumeralFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) {
    return negativeOrZeroArabicNumeral(numeral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) {
    return negativeOrZeroArabicNumeral?.call(numeral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (negativeOrZeroArabicNumeral != null) {
      return negativeOrZeroArabicNumeral(numeral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) {
    return negativeOrZeroArabicNumeral(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) {
    return negativeOrZeroArabicNumeral?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (negativeOrZeroArabicNumeral != null) {
      return negativeOrZeroArabicNumeral(this);
    }
    return orElse();
  }
}

abstract class NegativeOrZeroArabicNumeralFailure
    implements NumeralsConverterFailure {
  const factory NegativeOrZeroArabicNumeralFailure(final int numeral) =
      _$NegativeOrZeroArabicNumeralFailure;

  int get numeral => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$NegativeOrZeroArabicNumeralFailureCopyWith<
          _$NegativeOrZeroArabicNumeralFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownNumeralFailureCopyWith<$Res> {
  factory _$$UnknownNumeralFailureCopyWith(_$UnknownNumeralFailure value,
          $Res Function(_$UnknownNumeralFailure) then) =
      __$$UnknownNumeralFailureCopyWithImpl<$Res>;
  $Res call({Exception exception});
}

/// @nodoc
class __$$UnknownNumeralFailureCopyWithImpl<$Res>
    extends _$NumeralsConverterFailureCopyWithImpl<$Res>
    implements _$$UnknownNumeralFailureCopyWith<$Res> {
  __$$UnknownNumeralFailureCopyWithImpl(_$UnknownNumeralFailure _value,
      $Res Function(_$UnknownNumeralFailure) _then)
      : super(_value, (v) => _then(v as _$UnknownNumeralFailure));

  @override
  _$UnknownNumeralFailure get _value => super._value as _$UnknownNumeralFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$UnknownNumeralFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$UnknownNumeralFailure implements UnknownNumeralFailure {
  const _$UnknownNumeralFailure(this.exception);

  @override
  final Exception exception;

  @override
  String toString() {
    return 'NumeralsConverterFailure.unknownNumeralFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownNumeralFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$UnknownNumeralFailureCopyWith<_$UnknownNumeralFailure> get copyWith =>
      __$$UnknownNumeralFailureCopyWithImpl<_$UnknownNumeralFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String numeral) invalidRomanNumeral,
    required TResult Function() invalidArabicNumeral,
    required TResult Function(int numeral) arabicNumeralTooLarge,
    required TResult Function(int numeral) negativeOrZeroArabicNumeral,
    required TResult Function(Exception exception) unknownNumeralFailure,
  }) {
    return unknownNumeralFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
  }) {
    return unknownNumeralFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String numeral)? invalidRomanNumeral,
    TResult Function()? invalidArabicNumeral,
    TResult Function(int numeral)? arabicNumeralTooLarge,
    TResult Function(int numeral)? negativeOrZeroArabicNumeral,
    TResult Function(Exception exception)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (unknownNumeralFailure != null) {
      return unknownNumeralFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidRomanNumeralFailure value)
        invalidRomanNumeral,
    required TResult Function(InvalidArabicNumeral value) invalidArabicNumeral,
    required TResult Function(ArabicNumeralTooLargeFailure value)
        arabicNumeralTooLarge,
    required TResult Function(NegativeOrZeroArabicNumeralFailure value)
        negativeOrZeroArabicNumeral,
    required TResult Function(UnknownNumeralFailure value)
        unknownNumeralFailure,
  }) {
    return unknownNumeralFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
  }) {
    return unknownNumeralFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidRomanNumeralFailure value)? invalidRomanNumeral,
    TResult Function(InvalidArabicNumeral value)? invalidArabicNumeral,
    TResult Function(ArabicNumeralTooLargeFailure value)? arabicNumeralTooLarge,
    TResult Function(NegativeOrZeroArabicNumeralFailure value)?
        negativeOrZeroArabicNumeral,
    TResult Function(UnknownNumeralFailure value)? unknownNumeralFailure,
    required TResult orElse(),
  }) {
    if (unknownNumeralFailure != null) {
      return unknownNumeralFailure(this);
    }
    return orElse();
  }
}

abstract class UnknownNumeralFailure implements NumeralsConverterFailure {
  const factory UnknownNumeralFailure(final Exception exception) =
      _$UnknownNumeralFailure;

  Exception get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UnknownNumeralFailureCopyWith<_$UnknownNumeralFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
