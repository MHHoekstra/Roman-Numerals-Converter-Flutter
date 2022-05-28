import 'package:dartz/dartz.dart';

import '../facades/numerals_converter_facade.dart';
import '../models/numerals_converter_failure.dart';

class ConvertToRomanUseCase {
  const ConvertToRomanUseCase(this._facade);

  final NumeralsConverterFacade _facade;

  Either<NumeralsConverterFailure, String> execute(int number) {
    final result = _facade.convertIntegerToRoman(number);
    return result;
  }
}
