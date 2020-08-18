import 'package:formz/formz.dart';

enum CodeValidationError { empty }

class Code extends FormzInput<String, CodeValidationError> {
  const Code.pure() : super.pure('');
  const Code.dirty([String value = '']) : super.dirty(value);

  @override
  CodeValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : CodeValidationError.empty;
  }
}
