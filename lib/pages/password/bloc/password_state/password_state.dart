// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';
part 'password_state.freezed.dart';

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState({
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput password,
  }) = _PasswordState;
}
