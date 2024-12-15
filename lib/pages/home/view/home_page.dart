import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systemapp/pages/home/bloc/bloc.dart';
import 'package:systemapp/pages/home/home.dart';

class HomePage extends StatelessWidget {
  static const route = '/home';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(initialState: const HomeState()),
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
          body: Column(
            children: [
              // Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: HomeAppbar(),
              // ),
              HomeCalendar(),
            ],
          ),
        ),
      ),
    );
  }
}
