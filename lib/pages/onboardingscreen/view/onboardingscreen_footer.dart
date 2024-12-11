import 'package:flutter/material.dart';

class OnboardingscreenFooter extends StatelessWidget {
  const OnboardingscreenFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ElevatedButton(
        onPressed: () {  },
        child: const Text('Login'),
         style: ButtonStyle(),
      ),
              ElevatedButton(
        onPressed: () {  },
        child: const Text('Register'),
      ),
      ],
    );
  }
}