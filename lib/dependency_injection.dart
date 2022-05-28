import 'package:get_it/get_it.dart';

import 'data/numerals_converter/facades/numerals_converter_facade_impl.dart';
import 'domain/numerals_converter/facades/numerals_converter_facade.dart';
import 'domain/numerals_converter/usecases/convert_from_roman_usecase.dart';
import 'domain/numerals_converter/usecases/convert_to_roman_usecase.dart';
import 'domain/numerals_converter/usecases/generate_random_numeral_usecase.dart';
import 'presentation/numerals_converter/blocs/numerals_converter_page_bloc.dart';

GetIt getIt = GetIt.instance;

void initiateGetIt() {
  //Repositories
  getIt.registerLazySingleton<NumeralsConverterFacade>(
      () => NumeralsConverterRepositoryImpl());

  //UseCases
  getIt.registerLazySingleton<ConvertToRomanUseCase>(
    () => ConvertToRomanUseCase(
      getIt.get(),
    ),
  );
  getIt.registerLazySingleton<ConvertFromRomanUseCase>(
    () => ConvertFromRomanUseCase(
      getIt.get(),
    ),
  );
  getIt.registerLazySingleton<GenerateRandomNumeralUseCase>(
    () => GenerateRandomNumeralUseCase(
      getIt.get(),
    ),
  );

  //BLoCs
  getIt.registerFactory<NumeralsConverterPageBloc>(
    () => NumeralsConverterPageBloc(
      getIt.get(),
      getIt.get(),
      getIt.get(),
    ),
  );
}
