import 'package:flutter/material.dart';
import 'package:systemapp/constant/constant.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
              backgroundColor: Colors.transparent,
              // centerTitle: true,
              // title: const Text('Home'),

              actions: [
                Image.asset(

                  Assets.logo      
                )
              ],
            );
  }
}