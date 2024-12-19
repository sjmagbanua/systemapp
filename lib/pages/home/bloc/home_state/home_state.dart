// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:systemapp/models/models.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    DateTime? selectedDay,
    @Default(DateTime) focusedDay,
    String? accounts,
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput email,
  }) = _HomeState;
}
