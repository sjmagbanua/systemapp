import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/models/models.dart';
import 'package:systemapp/pages/task/bloc/bloc.dart';
import 'package:systemapp/repositories/repositories.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TodolistRepositories _todolistRepositories;
  TaskBloc(
    {
      required TodolistRepositories todolistRepositories,
      required TaskState initialState,
    }
  )  : _todolistRepositories = todolistRepositories,
  super(initialState){
    on<OnUpdateTaskPressed>(_onUpdateTaskPressed);
    on<TaskFormChanged>(_taskFormChanged);
    on<TaskScreenCreated>(_taskScreenCreated);
  }

    Future<void> _onUpdateTaskPressed(OnUpdateTaskPressed event, Emitter<TaskState> emit) async{
    await _todolistRepositories.updateTask(
      id: event.taskId,
      task: event.task
    );
    emit(state.copyWith.taskUpdate(value: event.task));
  }

  void _taskFormChanged(TaskFormChanged event, Emitter<TaskState> emit) {
    var task = event.taskForm;
   var errorType = ErrorType.empty;
    print('here $task');
    if (task.isEmpty) {
      errorType = ErrorType.empty;
    }else {
      errorType = ErrorType.none;
    }
    emit(state.copyWith.taskUpdate(value: event.taskForm));
    print('taskupdate: $task');

  }

    Future<void> _taskScreenCreated(TaskScreenCreated event, Emitter<TaskState> emit) async{
    var todos = await _todolistRepositories.todos();
    emit(state.copyWith());
    }
 }