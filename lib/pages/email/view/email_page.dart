import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/email/email.dart';
import 'package:systemapp/repositories/repositories.dart';

class EmailPage extends StatelessWidget {
  static const route = '/email';

  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EmailBloc(
        initialState: const EmailState(),
        accountRepository: RepositoryProvider.of<AccountRepository>(context),
      ),
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
        child:const Scaffold(
          body:  CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: EmailAppbar(),
            ),
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
    );
  }
}
