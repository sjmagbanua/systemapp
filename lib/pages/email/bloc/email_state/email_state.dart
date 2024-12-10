// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../models/models.dart';
part 'email_state.freezed.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState({
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput email,
  }) = _EmailState;
}
