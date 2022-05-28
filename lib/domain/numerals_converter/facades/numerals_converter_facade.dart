import 'package:dartz/dartz.dart';
import 'package:roman_numerals_converter/domain/core/models/pair.dart';

import '../models/numerals_converter_failure.dart';

abstract class NumeralsConverterFacade {
  Either<NumeralsConverterFailure, String> convertIntegerToRoman(int number);

  Either<NumeralsConverterFailure, int> convertRomanToInteger(String number);

  Either<NumeralsConverterFailure, Pair<int, String>> generateRandomPair();
}
