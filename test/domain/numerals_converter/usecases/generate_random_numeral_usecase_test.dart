import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:roman_numerals_converter/domain/core/models/pair.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/repositories/numerals_converter_repository.dart';
import 'package:roman_numerals_converter/domain/numerals_converter/usecases/generate_random_numeral_usecase.dart';

class MockNumeralsConverterRepository extends Mock
    implements NumeralsConverterRepository {}

void main() {
  late final GenerateRandomNumeralUseCase useCase;
  late final NumeralsConverterRepository repository;
  setUpAll(() {
    repository = MockNumeralsConverterRepository();
    useCase = GenerateRandomNumeralUseCase(repository);
  });
  group('GenerateRandomNumeral', () {
    test('execute should call the repository and forward what it receives', () {
      //Arrange
      when(() => repository.generateRandomPair())
          .thenAnswer((_) => right(const Pair(5, 'V')));

      //Act
      final result = useCase.execute();

      //Assert
      verify(() => repository.generateRandomPair()).called(1);

      expect(result.isRight(), true);
      expect(result.getOrElse(() => const Pair(0, '')), const Pair(5, 'V'));
    });
  });
}
