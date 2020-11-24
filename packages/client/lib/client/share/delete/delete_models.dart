import 'package:formz/formz.dart';

enum DeleteType {
  local,
  favourites,
  remove,
  delete,
}

enum TypeValidationError { empty }

class Type extends FormzInput<DeleteType, TypeValidationError> {
  const Type.pure() : super.pure(null);

  const Type.dirty([DeleteType value]) : super.dirty(value);

  @override
  TypeValidationError validator(DeleteType value) {
    return value == null ? TypeValidationError.empty : null;
  }
}
