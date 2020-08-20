import 'package:formz/formz.dart';

enum FooValidationError { empty }

class Foo extends FormzInput<String, FooValidationError> {
  const Foo.pure() : super.pure('');
  const Foo.dirty([String value = '']) : super.dirty(value);

  @override
  FooValidationError validator(String value) {
    return value?.isNotEmpty == true ? null : FooValidationError.empty;
  }
}
