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
    return BlocBuilder<EmailBloc, EmailState>(
      builder: (context, state) {
        return Column(
          children: [
            TextField(
              onChanged: (value) {
                bloc.add(
                  EmailChanged(value),
                );
              },
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Email',
                fillColor: Colors.grey,
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
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: TextField(
                onChanged: (value) {
                  bloc.add(
                    PasswordChanged(value),
                  );
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Password',
                  fillColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.password.value.isNotEmpty
                        ? const BorderSide(color: Colors.yellowAccent, width: 3)
                        : BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(106),
                    borderSide: state.password.value.isNotEmpty
                        ? const BorderSide(color: Colors.yellowAccent, width: 3)
                        : BorderSide.none,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
