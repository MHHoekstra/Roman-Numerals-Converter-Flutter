import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/facades/numerals_converter_facade.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/usecases/convert_to_roman_usecase.dart';

class MockNumeralsConverterRepository extends Mock
    implements NumeralsConverterFacade {}

void main() {
  late final ConvertToRomanUseCase useCase;
  late final NumeralsConverterFacade facade;
  setUpAll(() {
    facade = MockNumeralsConverterRepository();
    useCase = ConvertToRomanUseCase(facade);
  });
  group('ConvertToRomanUseCase', () {
    test('execute should call the repository and forward what it receives', () {
      //Arrange
      const number = 5;
      when(() => facade.convertIntegerToRoman(number))
          .thenAnswer((_) => right('V'));

      //Act
      final result = useCase.execute(number);

      //Assert
      verify(() => facade.convertIntegerToRoman(number)).called(1);

      expect(result.isRight(), true);
      expect(result.getOrElse(() => ''), 'V');
    });
  });
}
