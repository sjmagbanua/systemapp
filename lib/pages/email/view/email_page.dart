import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/email/email.dart';
import 'package:systemapp/pages/email/view/email_footer.dart';

class EmailPage extends StatelessWidget {
  static const route = '/email';

  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailBloc(
        initialState: const EmailState(),
      ),
      child: BlocListener<EmailBloc, EmailState>(
        listener: (context, state) {
          
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Email'),
          ),
          body:LayoutBuilder(
            builder: (context, constraints) {
              final totalHeight = constraints.maxHeight;
              // Calculate heights for 3/4 and 1/4 proportions
              final emailFormHeight = totalHeight * 0.75;
              final emailFooterHeight = totalHeight * 0.25;

              return  CustomScrollView(
              slivers: [
                 SliverToBoxAdapter(
                  child: SizedBox(
                    height: emailFormHeight,
                    child: const EmailForm(),
                    ),
                 ),
                 SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: emailFooterHeight,
                      child: const EmailFooter(),
                    ),
                  ),
                 ),
              ],
            );
            },
          ),
        ),
      ),
    );
  }
}
