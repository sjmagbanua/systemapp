import 'package:flutter/material.dart';
import 'package:systemapp/pages/onboardingscreen/onboarding.dart';

class OnboardingscreenPage extends StatelessWidget {
  const OnboardingscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final totalHeight = constraints.maxHeight;

          return Column(
            children: [
              // Onboarding Slides (3/4 of the screen)
              SizedBox(
                height: totalHeight * 3 / 4,
                child: const OnboardingscreenSlides(),
              ),
              // Onboarding Footer (1/4 of the screen)
              SizedBox(
                height: totalHeight * 1 / 4,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48),
                  child: OnboardingscreenFooter(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
