import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/first_screen.dart';
import 'package:start_project1/features/authentication/screens/login_screen.dart';
import 'package:start_project1/utils/app_colors.dart';

class splaash_screen extends StatefulWidget {
  const splaash_screen({super.key});

  @override
  State<splaash_screen> createState() => _splaash_screenState();
}

class _splaash_screenState extends State<splaash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(minutes: 10),
          () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => login_screen(),
          ),
              (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.primarycolor,
      body: Center(
        child: Image.asset(
          'assets/images/vector.png',
          height: 72,
          width: 72,
        ),
      ),
    );
  }
}
