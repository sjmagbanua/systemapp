import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/onboarding/email/email.dart';
import 'package:systemapp/pages/onboarding/email/view/email_footer.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailBloc(initialState: const EmailState()),
      child:  Scaffold(
        appBar: AppBar(
          title: const Text('SYSTEM APP'),
        ),
        body: const Column(
          children: [EmailForm(), EmailFooter(),],
        ),
      ),
    );
  }
}
