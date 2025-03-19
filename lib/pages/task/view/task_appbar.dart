import 'package:flutter/material.dart';

class TaskAppbar extends StatelessWidget {
  const TaskAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: const Text('Edit To Do'),
       leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.chevron_left,
          color:  Color(0xFFFFD700),
          size: 35,
        ),
      )
    );
  }
}