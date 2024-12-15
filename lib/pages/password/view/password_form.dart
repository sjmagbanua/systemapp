import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/password/bloc/bloc.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<PasswordBloc>();
    return BlocBuilder<PasswordBloc, PasswordState>(
      builder: (context, state) {
        return TextField(
          onChanged: (value) {
            bloc.add(PasswordChanged(value));
          },
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            filled: true,
            hintText: 'Password',
            fillColor: Colors.grey,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(106),
                borderSide:
                    const BorderSide(color: Colors.yellowAccent, width: 3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(106),
                borderSide:
                    const BorderSide(color: Colors.yellowAccent, width: 3)),
          ),
        );
      },
    );
  }
}
