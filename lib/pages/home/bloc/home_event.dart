abstract class HomeEvent {
  const HomeEvent();
}

class OnSelectedDay extends HomeEvent{
  final DateTime selectedDay;
  const OnSelectedDay(this.selectedDay);
}

class OnPageChanged extends HomeEvent{
  final DateTime onPageChanged;
  const OnPageChanged(this.onPageChanged);
}

class ScreenCreated extends HomeEvent{
  const ScreenCreated();
}

class TextFormChanged extends HomeEvent{
  final String text;
  const TextFormChanged(this.text);
}

// class TaskFormChanged extends HomeEvent{
//   final String taskChanged;
//   const TaskFormChanged(this.taskChanged);
// }

class AddToDoPressed extends HomeEvent{
  final String text;
  const AddToDoPressed(this.text);
}

// class UpdateTodoPressed extends HomeEvent{
//   final String task;
//   final int todoId;
//   const UpdateTodoPressed(this.task, this.todoId);
// }

class DeleteTodoPressed extends HomeEvent{
  final int? id;
  const DeleteTodoPressed(this.id);
}