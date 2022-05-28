import 'package:dartz/dartz.dart';

import '../models/numerals_converter_failure.dart';
import '../repositories/numerals_converter_repository.dart';

class ConvertToRomanUseCase {
  const ConvertToRomanUseCase(this._repository);

  final NumeralsConverterRepository _repository;

  Either<NumeralsConverterFailure, String> execute(int number) {
    final result = _repository.convertIntegerToRoman(number);
    return result;
  }
}
