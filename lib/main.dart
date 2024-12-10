import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/onboarding/email/view/email_page.dart';
import 'package:systemapp/repositories/product_repositories.dart';
import 'package:systemapp/services/service.dart';

void main() {
  var baseUrl = 'https://dummyjson.com';

  runApp(  SystemApp( productRepositories: ProductRepositories(
    ProductService(baseUrl:baseUrl )
  ), ),);
}

class SystemApp extends StatefulWidget {
  final ProductRepositories productRepositories;
  const SystemApp({super.key, required this.productRepositories,});

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
          return const EmailPage();
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: widget.productRepositories,)
      ],
      child: MaterialApp.router(
        routerConfig: _router,
        title: 'Inventory app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            // textTheme: TextTheme(),
            // textButtonTheme: TextButtonThemeData(),
            buttonTheme: const ButtonThemeData(
              shape: CircleBorder(),
            ),
            inputDecorationTheme: InputDecorationTheme(),
            elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle())),
      ),
    );
  }
}
