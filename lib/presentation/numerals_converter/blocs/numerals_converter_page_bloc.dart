import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/numerals_converter/models/numerals_converter_failure.dart';
import '../../../domain/numerals_converter/usecases/convert_from_roman_usecase.dart';
import '../../../domain/numerals_converter/usecases/convert_to_roman_usecase.dart';
import '../../../domain/numerals_converter/usecases/generate_random_numeral_usecase.dart';

part 'numerals_converter_page_event.dart';
part 'numerals_converter_page_state.dart';

class NumeralsConverterPageBloc
    extends Bloc<NumeralsConverterPageEvent, NumeralsConverterPageState> {
  final ConvertFromRomanUseCase _convertFromRomanUseCase;
  final ConvertToRomanUseCase _convertToRomanUseCase;
  final GenerateRandomNumeralUseCase _generateRandomNumeralUseCase;

  NumeralsConverterPageBloc(
    this._convertFromRomanUseCase,
    this._convertToRomanUseCase,
    this._generateRandomNumeralUseCase,
  ) : super(
          const NumeralsConverterPageInitial(
            '',
            '',
          ),
        ) {
    on<IntegerChangedEvent>(_handleIntegerChanged);
    on<RomanNumeralChangedEvent>(_handleRomanNumeralChanged);
    on<GenerateRandomNumeralEvent>(_handleGenerateRandomNumeral);
  }

  FutureOr<void> _handleGenerateRandomNumeral(
    GenerateRandomNumeralEvent event,
    emit,
  ) {
    final result = _generateRandomNumeralUseCase.execute();
    result.fold(
      (l) => emit(
        NumeralsConverterPageErrored(
          l,
          state.hinduArabicNumeral,
          state.romanNumeral,
        ),
      ),
      (r) => emit(
        NumeralsConverterPageSuccess(
          r.left.toString(),
          r.right,
        ),
      ),
    );
  }

  FutureOr<void> _handleRomanNumeralChanged(
    RomanNumeralChangedEvent event,
    emit,
  ) {
    if (event.input.isEmpty) {
      emit(
        const NumeralsConverterPageSuccess(
          '',
          '',
        ),
      );
      return Future(() => null);
    }
    final result = _convertFromRomanUseCase.execute(event.input);
    result.fold(
      (l) => emit(
        NumeralsConverterPageErrored(
          l,
          state.hinduArabicNumeral,
          event.input,
        ),
      ),
      (r) => emit(
        NumeralsConverterPageSuccess(
          r == 0 ? '' : r.toString(),
          event.input,
        ),
      ),
    );
  }

  FutureOr<void> _handleIntegerChanged(IntegerChangedEvent event, emit) {
    if (event.input.isEmpty) {
      emit(
        const NumeralsConverterPageSuccess(
          '',
          '',
        ),
      );

      return Future(() => null);
    }
    final integer = int.tryParse(event.input);
    if (integer == null) {
      emit(
        NumeralsConverterPageErrored(
          const NumeralsConverterFailure.invalidArabicNumeral(),
          event.input,
          state.romanNumeral,
        ),
      );
    } else {
      final result = _convertToRomanUseCase.execute(integer);
      result.fold(
        (l) => emit(
          NumeralsConverterPageErrored(
            l,
            event.input,
            state.romanNumeral,
          ),
        ),
        (r) => emit(
          NumeralsConverterPageSuccess(
            event.input,
            r,
          ),
        ),
      );
    }
  }
}
