import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/models/failure.dart';

part 'numerals_converter_failure.freezed.dart';

@freezed
class NumeralsConverterFailure extends Failure with _$NumeralsConverterFailure {
  const factory NumeralsConverterFailure.invalidRomanNumeral(String numeral) =
      InvalidRomanNumeralFailure;

  const factory NumeralsConverterFailure.invalidArabicNumeral() =
      InvalidArabicNumeral;

  const factory NumeralsConverterFailure.arabicNumeralTooLarge(int numeral) =
      ArabicNumeralTooLargeFailure;

  const factory NumeralsConverterFailure.negativeOrZeroArabicNumeral(
      int numeral) = NegativeOrZeroArabicNumeralFailure;

  const factory NumeralsConverterFailure.unknownNumeralFailure(
      Exception exception) = UnknownNumeralFailure;
}
