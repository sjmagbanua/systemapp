import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/password/view/password_appbar.dart';
import 'package:systemapp/pages/password/view/password_footer.dart';
import 'package:systemapp/pages/password/view/password_form.dart';

import '../bloc/bloc.dart';

class PasswordPage extends StatelessWidget {
  static const route = '/password';

  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordBloc(initialState: const PasswordState()),
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
        child: const Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: PasswordAppbar(),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(48, 62, 48, 0),
                  child: PasswordForm(),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(48, 0, 48, 16),
                    child: PasswordFooter(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
