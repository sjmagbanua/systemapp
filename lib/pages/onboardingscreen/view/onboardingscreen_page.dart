import 'package:flutter/material.dart';
import 'package:systemapp/pages/onboardingscreen/onboarding.dart';

class OnboardingscreenPage extends StatelessWidget {
  const OnboardingscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          OnboardingscreenSlides(),
          OnboardingscreenFooter()
        ],
      ),
    );
  }
}