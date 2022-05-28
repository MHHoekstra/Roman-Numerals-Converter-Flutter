import 'package:dartz/dartz.dart';

import '../facades/numerals_converter_facade.dart';
import '../models/numerals_converter_failure.dart';

class ConvertFromRomanUseCase {
  const ConvertFromRomanUseCase(this._facade);

  final NumeralsConverterFacade _facade;

  Either<NumeralsConverterFailure, int> execute(String numeral) {
    final result = _facade.convertRomanToInteger(numeral);
    return result;
  }
}
