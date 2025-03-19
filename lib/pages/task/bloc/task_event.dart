abstract class TaskEvent {
  const TaskEvent();
}

class OnUpdateTaskPressed extends TaskEvent{
  final String task;
  final int taskId;
  const OnUpdateTaskPressed(this.task, this.taskId);
}

class TaskFormChanged extends TaskEvent{
  final String taskForm;
  const TaskFormChanged(this.taskForm);
}

class TaskScreenCreated extends TaskEvent{
  const TaskScreenCreated();
}