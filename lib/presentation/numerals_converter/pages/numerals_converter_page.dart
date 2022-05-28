import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/numerals_converter/models/numerals_converter_failure.dart';
import '../blocs/numerals_converter_page_bloc.dart';

class NumeralsConverterPage extends StatefulWidget {
  const NumeralsConverterPage({Key? key}) : super(key: key);

  @override
  State<NumeralsConverterPage> createState() => _NumeralsConverterPageState();
}

class _NumeralsConverterPageState extends State<NumeralsConverterPage> {
  final TextEditingController _integerController =
      TextEditingController(text: '');
  final TextEditingController _romanController =
      TextEditingController(text: '');
  final _integerFocus = FocusNode();
  final _romanFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roman Numerals Converter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocProvider(
          create: (context) => GetIt.I.get<NumeralsConverterPageBloc>(),
          child: BlocConsumer<NumeralsConverterPageBloc,
              NumeralsConverterPageState>(
            listener: (context, state) {
              if (state is NumeralsConverterPageErrored &&
                  state.failure is UnknownNumeralFailure) {
                showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                    title: Text('Whoops...'),
                    content: Text('I am not feeling very well...'),
                  ),
                );
              }
              _integerController.text = state.hinduArabicNumeral;
              _integerController.selection = TextSelection.fromPosition(
                  TextPosition(offset: _integerController.text.length));

              _romanController.text = state.romanNumeral;
              _romanController.selection = TextSelection.fromPosition(
                  TextPosition(offset: _romanController.text.length));
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (_) {
                      if (state is NumeralsConverterPageErrored) {
                        final errorMessage = state.failure.whenOrNull<String?>(
                          arabicNumeralTooLarge: (_) =>
                              'This number is too big!',
                          invalidArabicNumeral: () =>
                              'Invalid integer. You\'re sure it\'s numeric?',
                          invalidRomanNumeral: (_) => null,
                          negativeOrZeroArabicNumeral: (_) =>
                              'The number must be bigger than 0',
                          unknownNumeralFailure: (_) => null,
                        );
                        return errorMessage;
                      }
                      return null;
                    },
                    focusNode: _integerFocus,
                    controller: _integerController,
                    onChanged: (input) {
                      BlocProvider.of<NumeralsConverterPageBloc>(context)
                          .add(IntegerChangedEvent(input));
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      label: Text('Hindu-Arabic Numeral'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (_) {
                      if (state is NumeralsConverterPageErrored) {
                        final errorMessage = state.failure.whenOrNull<String?>(
                          arabicNumeralTooLarge: (_) => null,
                          invalidArabicNumeral: () => null,
                          invalidRomanNumeral: (_) =>
                              'Please insert a valid Roman Numeral',
                          negativeOrZeroArabicNumeral: (_) => null,
                          unknownNumeralFailure: (_) => null,
                        );
                        return errorMessage;
                      }
                      return null;
                    },
                    focusNode: _romanFocus,
                    controller: _romanController,
                    onChanged: (input) {
                      BlocProvider.of<NumeralsConverterPageBloc>(context)
                          .add(RomanNumeralChangedEvent(input));
                    },
                    textCapitalization: TextCapitalization.characters,
                    decoration: const InputDecoration(
                      label: Text('Roman Numeral'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _integerFocus.unfocus();
                      _romanFocus.unfocus();
                      BlocProvider.of<NumeralsConverterPageBloc>(context)
                          .add(const GenerateRandomNumeralEvent());
                    },
                    child: const Text('Generate random numeral'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _integerFocus.dispose();
    _romanFocus.dispose();
    _integerController.dispose();
    _romanController.dispose();

    super.dispose();
  }
}
