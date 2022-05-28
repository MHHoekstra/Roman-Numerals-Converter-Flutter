import 'package:flutter_test/flutter_test.dart';
import 'package:roman_numerals_converter/data/numerals_converter/repositories/numerals_converter_repository_impl.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/models/numerals_converter_failure.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/repositories/numerals_converter_repository.dart';

void main() {
  late final NumeralsConverterRepository repository;
  setUpAll(() {
    repository = NumeralsConverterRepositoryImpl();
  });
  group('NumeralsConverterRepositoryImpl', () {
    group('convertIntegerToRoman', () {
      test('should successfully convert an integer between 1 and 3999', () {
        //Arrange
        const int number = 3976;
        const String expectedNumeral = 'MMMCMLXXVI';

        //Act
        final result = repository.convertIntegerToRoman(number);

        //Assert
        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => ''),
          expectedNumeral,
        );
      });
      test('should return a failure if lower or equals 0', () {
        //Arrange
        const int number = 0;

        //Act
        final result = repository.convertIntegerToRoman(number);

        //Assert
        expect(result.isLeft(), true);
        result.fold(
          (l) => expect(
            l,
            isA<NegativeOrZeroArabicNumeralFailure>(),
          ),
          (r) => throw Exception('Should not be Right'),
        );
      });
      test('should return a failure if bigger than 4000', () {
        //Arrange
        const int number = 4000;

        //Act
        final result = repository.convertIntegerToRoman(number);

        //Assert
        expect(result.isLeft(), true);
        result.fold(
          (l) => expect(
            l,
            isA<ArabicNumeralTooLargeFailure>(),
          ),
          (r) => throw Exception('Should not be Right'),
        );
      });
    });
    group('convertRomanToInteger', () {
      test(
          'should successfully convert a valid roman numeral to integer between 1 and 3999',
          () {
        //Arrange
        const int expectedNumber = 3976;
        const String numeral = 'MMMCMLXXVI';

        //Act
        final result = repository.convertRomanToInteger(numeral);
        //Assert
        expect(result.isRight(), true);
        expect(
          result.getOrElse(() => -1),
          expectedNumber,
        );
      });
      test('should return a failure if the numeral is invalid', () {
        //Arrange
        const String numeral = 'MMMCMMLXXVI';

        //Act
        final result = repository.convertRomanToInteger(numeral);
        //Assert
        expect(result.isLeft(), true);
        result.fold(
          (l) => expect(
            l,
            isA<InvalidRomanNumeralFailure>(),
          ),
          (r) => throw Exception('Should not be Right'),
        );
      });
    });
    group('generateRandomRoman', () {
      test('should successfully generate a pair between 1 and 3999', () {
        //Act
        final result = repository.generateRandomPair();
        //Assert
        expect(result.isRight(), true);
      });
    });
  });
}
