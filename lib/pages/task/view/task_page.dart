import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/task/bloc/bloc.dart';
import 'package:systemapp/pages/task/task.dart';
import 'package:systemapp/pages/task/view/task_appbar.dart';
import 'package:systemapp/repositories/repositories.dart';

class TaskPage extends StatelessWidget {
  static const route = '/task';
  final TaskState initialState;
  const TaskPage({super.key, required this.initialState});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskBloc(
        initialState: initialState,
        todolistRepositories: RepositoryProvider.of<TodolistRepositories>(context)
      ),
      child:  const Scaffold(
        appBar: PreferredSize(preferredSize:Size(double.infinity, 65) , child: TaskAppbar()),
        body: TaskEdit(
        ),
      ),
    );
  }
}
