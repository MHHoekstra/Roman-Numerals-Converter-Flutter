import 'package:dartz/dartz.dart';

import '../models/numerals_converter_failure.dart';
import '../repositories/numerals_converter_repository.dart';

class ConvertFromRomanUseCase {
  const ConvertFromRomanUseCase(this._repository);

  final NumeralsConverterRepository _repository;

  Either<NumeralsConverterFailure, int> execute(String numeral) {
    final result = _repository.convertRomanToInteger(numeral);
    return result;
  }
}
