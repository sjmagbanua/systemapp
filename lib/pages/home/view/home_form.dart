import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';
import 'package:systemapp/pages/task/bloc/bloc.dart';
import 'package:systemapp/pages/task/task.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: TextField(
                onChanged: (value) {
                  bloc.add(
                    TextFormChanged(value),
                  );
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Add To Do',
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.email.value.isNotEmpty
                        ? const BorderSide(color: Colors.yellowAccent, width: 3)
                        : BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.email.value.isNotEmpty
                        ? const BorderSide(color: Colors.yellowAccent, width: 3)
                        : BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(48, 16, 48, 16),
              child: ElevatedButton(
                  onPressed: () {
                    bloc.add(AddToDoPressed(state.email.value));
                  },
                  child: const Text('Add')),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [Colors.yellow, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: Table(
                border: TableBorder.all(color: Colors.yellowAccent),
                children: [
                  const TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Id',
                          style: TextStyle(fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'To Do',
                          style: TextStyle(fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Actions',
                          style: TextStyle(fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  for (var todo in state.todos)
                    TableRow(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          todo!.id.toString(),
                          // state.todos?.first,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          todo.email ?? '',
                          // state.todos?.first,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.push(
                                TaskPage.route,
                                extra: TaskState(
                                    task: todo.email ?? '',
                                    todos: state.todos,
                                    todoId: todo.id ?? 0),
                              );
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.blue,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text(
                                        'Are you sure you want to delete?'),
                                    actions: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            onPressed: () {
                                              context.pop();
                                            },
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              bloc.add(
                                                  DeleteTodoPressed(todo.id));
                                            },
                                            child: const Text('Delete'),
                                          )
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ])
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
