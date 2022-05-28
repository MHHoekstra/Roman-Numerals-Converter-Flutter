import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:roman_numerals_converter/domain/core/models/pair.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/models/numerals_converter_failure.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/repositories/numerals_converter_repository.dart';

class NumeralsConverterRepositoryImpl implements NumeralsConverterRepository {
  final Map<int, String> _mapOfThousands = {
    1: 'M',
    2: 'MM',
    3: 'MMM',
  };
  final Map<int, String> _mapOfHundreds = {
    1: 'C',
    2: 'CC',
    3: 'CCC',
    4: 'CD',
    5: 'D',
    6: 'DC',
    7: 'DCC',
    8: 'DCCC',
    9: 'CM',
  };
  final Map<int, String> _mapOfDozens = {
    1: 'X',
    2: 'XX',
    3: 'XXX',
    4: 'XL',
    5: 'L',
    6: 'LX',
    7: 'LXX',
    8: 'LXXX',
    9: 'XC',
  };
  final Map<int, String> _mapOfUnits = {
    1: 'I',
    2: 'II',
    3: 'III',
    4: 'IV',
    5: 'V',
    6: 'VI',
    7: 'VII',
    8: 'VIII',
    9: 'IX',
  };

  final Map<String, int> _mapRomanToInt = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
    '!': 4,
    '@': 9,
    '#': 40,
    '%': 90,
    '&': 400,
    '(': 900,
  };

  @override
  Either<NumeralsConverterFailure, String> convertIntegerToRoman(int number) {
    try {
      if (number <= 0) {
        return left(
            NumeralsConverterFailure.negativeOrZeroArabicNumeral(number));
      }
      if (number >= 4000) {
        return left(NumeralsConverterFailure.arabicNumeralTooLarge(number));
      }
      int auxNumber = number;
      String romanNumeral = '';

      while (auxNumber > 0) {
        if (auxNumber >= 1000) {
          final thousand = auxNumber ~/ 1000;
          final mappedThousand = _mapOfThousands[thousand];
          romanNumeral = romanNumeral + mappedThousand!;
          auxNumber = auxNumber % 1000;
        } else if (auxNumber >= 100) {
          final hundred = auxNumber ~/ 100;
          final mappedHundred = _mapOfHundreds[hundred];
          romanNumeral = romanNumeral + mappedHundred!;
          auxNumber = auxNumber % 100;
        } else if (auxNumber >= 10) {
          final dozen = auxNumber ~/ 10;
          final mappedDozen = _mapOfDozens[dozen];
          romanNumeral = romanNumeral + mappedDozen!;
          auxNumber = auxNumber % 10;
        } else {
          final mappedUnit = _mapOfUnits[auxNumber];
          romanNumeral = romanNumeral + mappedUnit!;
          auxNumber = 0;
        }
      }
      return right(romanNumeral);
    } on Exception catch (exception) {
      return left(NumeralsConverterFailure.unknownNumeralFailure(exception));
    }
  }

  @override
  Either<NumeralsConverterFailure, int> convertRomanToInteger(String numeral) {
    final parsedNumeral = _parseRomanNumeral(numeral);
    final RegExp regExp = RegExp(
      r'^M{0,3}((\({1})|(\&{1})|(D{0,1}C{0,3})){0,1}((\%{1})|(\#{1})|(L{0,1}X{0,3})){0,1}((\@{1})|(\!{1})|(V{0,1}I{0,3}))$',
    );

    if (!regExp.hasMatch(parsedNumeral)) {
      return left(NumeralsConverterFailure.invalidRomanNumeral(numeral));
    }

    final numberArray = parsedNumeral.split('');
    final arabicNumeral = numberArray.fold(
      0,
      (
        int previousValue,
        element,
      ) =>
          previousValue + _mapRomanToInt[element]!,
    );
    return right(arabicNumeral);
  }

  @override
  Either<NumeralsConverterFailure, Pair<int, String>> generateRandomPair() {
    final randomInt = Random().nextInt(3999) + 1;
    final roman = convertIntegerToRoman(randomInt);
    final pair =
        roman.fold<Either<NumeralsConverterFailure, Pair<int, String>>>(
      (l) => left(l),
      (r) => right(
        Pair(randomInt, r),
      ),
    );
    return pair;
  }

  String _parseRomanNumeral(String numeral) {
    return numeral
        .replaceAll('IV', '!')
        .replaceAll('IX', '@')
        .replaceAll('XL', '#')
        .replaceAll('XC', '%')
        .replaceAll('CD', '&')
        .replaceAll('CM', '(');
  }
}
