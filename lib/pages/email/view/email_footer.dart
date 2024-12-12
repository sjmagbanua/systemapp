import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/email/bloc/bloc.dart';
import 'package:systemapp/pages/email/view/view.dart';

class EmailFooter extends StatelessWidget {
  const EmailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(onPressed: () => context.push(EmailPage() as String), child: Text('Next'),);
    var bloc = context.read<EmailBloc>();
    return BlocBuilder<EmailBloc, EmailState>(
      builder: (context, state) {
        return Column(
          children: [
            ElevatedButton(onPressed: () {            
            }, child: const Text('Login'),)
          ],
        );
      },
    );
  }
}
