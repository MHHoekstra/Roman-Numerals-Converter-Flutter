import 'package:dartz/dartz.dart';

import '../../core/models/pair.dart';
import '../facades/numerals_converter_facade.dart';
import '../models/numerals_converter_failure.dart';

class GenerateRandomNumeralUseCase {
  const GenerateRandomNumeralUseCase(this._facade);

  final NumeralsConverterFacade _facade;

  Either<NumeralsConverterFailure, Pair<int, String>> execute() {
    final result = _facade.generateRandomPair();
    return result;
  }
}
