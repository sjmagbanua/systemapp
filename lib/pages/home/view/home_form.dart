import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';

class HomeForm extends StatelessWidget {
  const HomeForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return  Column(
          children: [
            TextField(
                  onChanged:(value) {
                    bloc.add(TextFormChanged(value),);
                  } ,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Add To Do',
                    fillColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.email.value.isNotEmpty ? const BorderSide(color: Colors.yellowAccent,
                    width: 3
                    ) : BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.email.value.isNotEmpty ? const BorderSide(color: Colors.yellowAccent,
                    width: 3                        
                    ) : BorderSide.none,
                  ),
                  ),
                ),
                ElevatedButton(onPressed: (){
                  bloc.add(AddToDoPressed(state.email.value));
                }, child: 
                const Text('Add')),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Table(
                    children:  [
                     const TableRow(children: 
                      [
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Task Title',
                              style: TextStyle(fontWeight: FontWeight.w900),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Status',
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
                     for(var todo in state.todos)
                     TableRow(
                      children: [
                                Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:   Text(
                                todo?.email ?? '',
                                // state.todos?.first,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(Icons.undo)
                            ),
                            Row(
                              children: 
                              [
                                IconButton(onPressed: (){
                                  showDialog(
                                    context: context,
                                     builder: (context,) {
                                      return  AlertDialog(
                                      title: const Text('Edit To Do'),
                                       content:  TextField(
                                        
                                        decoration: InputDecoration(
                                          hintText: state.todos.toString()
                                        ),
                                       ),
                                       actions: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: (){
                                                  context.pop();
                                                },
                                                icon: const Icon(Icons.cancel_rounded),
                                                ),
                                              IconButton(
                                              onPressed: (){}, 
                                              icon: const Icon(Icons.update))  
                                            ],
                                          ),
                                    
                                       ], 
                                    );
                                    },
                                  );
                                }, icon: const Icon(Icons.edit)),
                                IconButton(
                                  onPressed: (){
                                 showDialog(
                                    context: context,
                                     builder: (context) {
                                      return  AlertDialog(
                                      title: const Text('Are you sure you want to delete?'),
                                       actions: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: (){
                                                  context.pop();
                                                },
                                                icon: const Icon(Icons.cancel_rounded),
                                                ),
                                              IconButton(
                                              onPressed: (){
                                                bloc.add(DeleteTodoPressed(todo?.id));
                                              }, 
                                              icon: const Icon(Icons.delete,
                                                ),
                                              )  
                                            ],
                                          ),
                                    
                                       ], 
                                    );
                                    },
                                  );
                                }, 
                                icon: const Icon(Icons.delete)),
                              ],
                            ),
                      ]
                     )
                    ],
                  )
                ),
                 
        // ElevatedButton(onPressed: 
        // (){
        //   bloc.add(AddToDoPressed(state.email.value));
        // }, child: const Text('Add'))
                // Row(
                //   children: [
                //     TextButton(onPressed: (){}, child: const Text('Cancel'),
                //     ),
                //     TextButton(onPressed: (){}, child: const Text('Save'),
                //     ),
                //   ],
                // ),
                // AlertDialog(
                //   title: const Text('ADD TO DO'),
                  
                //   backgroundColor: const Color(0xFFEFEFEF),
                //   shape: RoundedRectangleBorder(
                //     side: const BorderSide(color: Colors.green, width: 2),
                //     borderRadius: BorderRadius.circular(10),
                //   ),
                //   actions: <Widget>[
                //     TextButton(
                //       child: const Text('Dismiss'),
                //       onPressed: () {
                //         context.pop();
                //       },
                //     ),
                //   ],
                // ),
              ],
            ),
          ],
        );
      },
    );
  }
}
