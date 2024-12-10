import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/onboarding/email/bloc/bloc.dart';

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
        return  Column(
          children: [
            const Text('Email'),
            TextField(
              style: const TextStyle(),
              onChanged:(value) {
                bloc.add(EmailChanged(value));
              } ,
            ),
            // Text(state.email.value)
          ],
        );
      },
    );
  }
}
