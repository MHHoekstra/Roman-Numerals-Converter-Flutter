part of 'numerals_converter_page_bloc.dart';

@immutable
abstract class NumeralsConverterPageState {
  const NumeralsConverterPageState(this.hinduArabicNumeral, this.romanNumeral);

  final String hinduArabicNumeral;
  final String romanNumeral;
}

class NumeralsConverterPageInitial extends NumeralsConverterPageState {
  const NumeralsConverterPageInitial(
    super.hinduArabicNumeral,
    super.romanNumeral,
  );
}

class NumeralsConverterPageErrored extends NumeralsConverterPageState {
  const NumeralsConverterPageErrored(
    this.failure,
    super.hinduArabicNumeral,
    super.romanNumeral,
  );

  final NumeralsConverterFailure failure;
}

class NumeralsConverterPageSuccess extends NumeralsConverterPageState {
  const NumeralsConverterPageSuccess(
    super.hinduArabicNumeral,
    super.romanNumeral,
  );
}
