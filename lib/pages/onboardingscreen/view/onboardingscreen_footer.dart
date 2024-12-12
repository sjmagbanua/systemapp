import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/email/email.dart';

class OnboardingscreenFooter extends StatelessWidget {
  const OnboardingscreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ElevatedButton(
        onPressed: () {
          context.push(EmailPage.route);
         },
        child: const Text('Login'),
      ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                        onPressed: () {  },
                        child: const Text('Register'),
                      ),
              ),
      ],
    );
  }
}