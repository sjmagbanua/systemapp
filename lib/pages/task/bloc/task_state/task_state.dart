// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:systemapp/models/models.dart';

part 'task_state.freezed.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default(TextFieldInput(
      errorType: ErrorType.empty,
    ))
    TextFieldInput taskUpdate,
    required String task,
    required List<Todo?> todos,
    required int todoId,
    String? newTask,
  }) = _TaskState;
}
