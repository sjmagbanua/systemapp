import 'package:flutter/material.dart';
import 'package:systemapp/constant/constant.dart';


class OnboardingscreenSlides extends StatelessWidget {
  const OnboardingscreenSlides({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8,80,8,8),
      child: Image.asset(
      Assets.sqilleoLogolight
            ),
    );
  }
}