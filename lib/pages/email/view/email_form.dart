import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/email/bloc/bloc.dart';

class EmailForm extends StatefulWidget {
  const EmailForm({super.key});

  @override
  State<EmailForm> createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  @override
  Widget build(BuildContext context) {
    var bloc = context.read<EmailBloc>();
    return  BlocBuilder<EmailBloc, EmailState>(
      builder: (context, state) {
        return  Padding(
          padding: const EdgeInsets.fromLTRB(8,0,8,0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Email'),
              TextField(
                onChanged:(value) {
                  bloc.add(EmailChanged(value),);
                } ,
                decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(106),
                  borderSide: const BorderSide(color: Colors.yellowAccent,
                  width: 3
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(106),
                  borderSide: const BorderSide(color: Colors.yellowAccent,
                  width: 3                        
                  ),
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16,),
                child: TextField(
                  style: const TextStyle(),
                  onChanged:(value) {
                    bloc.add(EmailChanged(value),);
                  } ,
                   decoration: InputDecoration(enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: const BorderSide(color: Colors.yellowAccent,
                    width: 3
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: const BorderSide(color: Colors.yellowAccent,
                    width: 3                
                    ),
                  ),
                  ),
                ),
              ),
              // Text(state.email.value)
            ],
          ),
        );
      },
    );
  }
}
