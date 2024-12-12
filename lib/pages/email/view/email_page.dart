import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/email/email.dart';

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
        child: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.2, 0.8],
            colors: [
                    Color(0xFFF9FAFB),
                    Color(0xFFD1D5DB),
                  ],
          ),
        ),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const Text('Email'),
              leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.yellow,
                size: 35,
              ),
              ),
            ),
            body: const CustomScrollView(
            slivers: [
               SliverToBoxAdapter(
                child:Padding(
                  padding: EdgeInsets.fromLTRB(48,62,48,0),
                  child: EmailForm(),
                ),
               ),
               SliverFillRemaining(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding:EdgeInsets.fromLTRB(48,0,48,16),
                    child: EmailFooter(),
                  ),
                ),
               ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
