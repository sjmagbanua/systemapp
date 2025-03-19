import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/task/bloc/bloc.dart';

class TaskEdit extends StatelessWidget {
  const TaskEdit({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<TaskBloc>();

    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        // var todos = state.todos;
        // print('here tdos: $todos');
        // var task = state.task;
        // print('task $task');
        return  Padding(
          padding: const EdgeInsets.only(top: 48),
          child: Column(
            children: [
              // Text(state.task),
              // Text(state.todoId.toString()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: TextField(
                  onChanged:(value) {
                    bloc.add(TaskFormChanged(value));
                  } ,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: state.task,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.taskUpdate.value.isNotEmpty ? const BorderSide(color: Colors.yellowAccent,
                    width: 3
                    ) : BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.taskUpdate.value.isNotEmpty ? const BorderSide(color: Colors.yellowAccent,
                    width: 3                        
                      ) : BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(48,16,48,0),
                child: ElevatedButton(onPressed: (){
                  bloc.add(OnUpdateTaskPressed(state.taskUpdate.value , state.todoId));
                  }, child:const Text('Save')
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
