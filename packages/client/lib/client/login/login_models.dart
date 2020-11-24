import 'package:formz/formz.dart';

enum EmailValidationError { empty }

class Email extends FormzInput<String, EmailValidationError> {
  const Email.pure() : super.pure('');

  const Email.dirty([String value = '']) : super.dirty(value);

  @override
  EmailValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : EmailValidationError.empty;
  }
}

enum CodeValidationError { empty }

class Code extends FormzInput<String, CodeValidationError> {
  const Code.pure() : super.pure('');

  const Code.dirty([String value = '']) : super.dirty(value);

  @override
  CodeValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : CodeValidationError.empty;
  }
}
