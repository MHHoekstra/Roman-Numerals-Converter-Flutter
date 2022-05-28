import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/repositories/numerals_converter_repository.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/usecases/convert_from_roman_usecase.dart';

class MockNumeralsConverterRepository extends Mock
    implements NumeralsConverterRepository {}

void main() {
  late final ConvertFromRomanUseCase useCase;
  late final NumeralsConverterRepository repository;
  setUpAll(() {
    repository = MockNumeralsConverterRepository();
    useCase = ConvertFromRomanUseCase(repository);
  });
  group('ConvertFromRoman', () {
    test('execute should call the repository and forward what it receives', () {
      //Arrange
      const numeral = 'X';
      when(() => repository.convertRomanToInteger(numeral))
          .thenAnswer((_) => right(10));

      //Act
      final result = useCase.execute(numeral);

      //Assert
      verify(() => repository.convertRomanToInteger(numeral)).called(1);

      expect(result.isRight(), true);
      expect(result.getOrElse(() => 0), 10);
    });
  });
}
