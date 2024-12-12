import 'package:flutter/material.dart';

class PasswordAppbar extends StatelessWidget {
  const PasswordAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              title: const Text('Password'),
              leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.yellow,
                size: 35,
              ),
              ),
            );
  }
}