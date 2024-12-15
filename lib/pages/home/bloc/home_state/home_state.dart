// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    DateTime? selectedDay,
    @Default(DateTime) focusedDay,
  }) = _HomeState;
}
