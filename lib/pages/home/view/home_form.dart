import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            Column(
              children: [
                 TextField(
          onChanged:(value) {
            bloc.add(TextFormChanged(value),);
          } ,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            hintText: 'Email',
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
        ElevatedButton(onPressed: 
        (){
          bloc.add(AddToDoPressed(state.email.value));
        }, child: const Text('Add'))
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
