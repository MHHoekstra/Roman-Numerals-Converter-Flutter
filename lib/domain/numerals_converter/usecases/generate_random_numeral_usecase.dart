import 'package:dartz/dartz.dart';

import '../../core/models/pair.dart';
import '../models/numerals_converter_failure.dart';
import '../repositories/numerals_converter_repository.dart';

class GenerateRandomNumeralUseCase {
  const GenerateRandomNumeralUseCase(this._repository);

  final NumeralsConverterRepository _repository;

  Either<NumeralsConverterFailure, Pair<int, String>> execute() {
    final result = _repository.generateRandomPair();
    return result;
  }
}
