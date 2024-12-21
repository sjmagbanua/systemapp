import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/databases/todolist_database/daos/daos.dart';
import 'package:systemapp/databases/todolist_database/todolist_database.dart';
import 'package:systemapp/pages/email/view/email_page.dart';
import 'package:systemapp/pages/home/view/home_page.dart';
import 'package:systemapp/pages/password/password.dart';
import 'package:systemapp/repositories/account_repository.dart';
import 'package:systemapp/repositories/repositories.dart';

void main() {
  var baseUrl = 'https://dummyjson.com';
  var toDoListDatabase = TodolistDatabase('database.sqlite3');

  // var todolistRepositories = TodolistRepositories(
  //   todolistDao: TodosDao(toDoListDatabase),
  //   );
  // var accountRepository = AccountRepository(
  //    accountDao: AccountDao(toDoListDatabase));
  runApp( 
     SystemApp( 
    todolistRepositories: TodolistRepositories(taskDao: TaskDao(toDoListDatabase)
    // todolistDao: TodosDao(toDoListDatabase),

      ),
       accountRepository: AccountRepository(accountDao:AccountDao(toDoListDatabase),
       ), 
    ),
  );
}

class SystemApp extends StatefulWidget {
  final TodolistRepositories todolistRepositories;
  final AccountRepository accountRepository;
  const SystemApp({super.key, required this.todolistRepositories, required this.accountRepository,});

  @override
  State<SystemApp> createState() => _SystemAppState();
}

class _SystemAppState extends State<SystemApp> {
  // This widget is the root of your application.

  /// The route configuration.
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
      GoRoute(
        path: EmailPage.route,
        builder: (BuildContext context, GoRouterState state) {
          return const EmailPage();
        },
      ),
      GoRoute(
        path: PasswordPage.route,
        builder: (BuildContext context, GoRouterState state) {
          return const PasswordPage();
        },
      ),
      GoRoute(
        path: HomePage.route,
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: widget.todolistRepositories,
        ),
        RepositoryProvider.value(value: widget.accountRepository,
        )
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'TODO LIST',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
                      focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(106),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(106),
              borderSide: BorderSide.none),
          fillColor: const Color(0xFF52525B),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 23,
          ),
          ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            buttonTheme: const ButtonThemeData(
              shape: CircleBorder(),
            ),
            elevatedButtonTheme:  ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
            elevation: 0,
            backgroundColor: const Color(0xFFFFD700),
            minimumSize: const Size(double.infinity, 65),
            foregroundColor: const Color(0xFF171717),
          ),
        ),
         outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(double.infinity, 65),
            foregroundColor: const Color(0xFFFAFAFA),
            side: const BorderSide(
              width: 3,
              color: Color(0xFFFFD700),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
          ),
        ),   
        ),
      ),
    );
  }
}
