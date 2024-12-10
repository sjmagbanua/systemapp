import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:systemapp/pages/onboarding/email/view/view.dart';

class EmailFooter extends StatelessWidget {
  const EmailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => context.push(EmailPage() as String), child: Text('Next'));
  }
}