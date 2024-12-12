import 'package:flutter/material.dart';

class PasswordFooter extends StatelessWidget {
  const PasswordFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {       
          // context.push(PasswordPage.route);
        }, child: const Text('Login'),
        );
  }
}