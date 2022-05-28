import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/repositories/numerals_converter_repository.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/usecases/convert_to_roman_usecase.dart';

class MockNumeralsConverterRepository extends Mock
    implements NumeralsConverterRepository {}

void main() {
  late final ConvertToRomanUseCase useCase;
  late final NumeralsConverterRepository repository;
  setUpAll(() {
    repository = MockNumeralsConverterRepository();
    useCase = ConvertToRomanUseCase(repository);
  });
  group('ConvertToRomanUseCase', () {
    test('execute should call the repository and forward what it receives', () {
      //Arrange
      const number = 5;
      when(() => repository.convertIntegerToRoman(number))
          .thenAnswer((_) => right('V'));

      //Act
      final result = useCase.execute(number);

      //Assert
      verify(() => repository.convertIntegerToRoman(number)).called(1);

      expect(result.isRight(), true);
      expect(result.getOrElse(() => ''), 'V');
    });
  });
}
