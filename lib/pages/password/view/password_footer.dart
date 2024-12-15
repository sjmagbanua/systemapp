import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/home/view/home_page.dart';

class PasswordFooter extends StatelessWidget {
  const PasswordFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {       
          context.push(HomePage.route);
        }, child: const Text('Login'),
        );
  }
}