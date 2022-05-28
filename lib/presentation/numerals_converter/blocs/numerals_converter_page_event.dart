part of 'numerals_converter_page_bloc.dart';

@immutable
abstract class NumeralsConverterPageEvent {
  const NumeralsConverterPageEvent();
}

class IntegerChangedEvent extends NumeralsConverterPageEvent {
  const IntegerChangedEvent(this.input);

  final String input;
}

class RomanNumeralChangedEvent extends NumeralsConverterPageEvent {
  const RomanNumeralChangedEvent(this.input);

  final String input;
}

class GenerateRandomNumeralEvent extends NumeralsConverterPageEvent {
  const GenerateRandomNumeralEvent();
}
