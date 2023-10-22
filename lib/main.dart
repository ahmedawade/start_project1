import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/favorite_screen.dart';
import 'package:start_project1/features/authentication/screens/first_screen.dart';
import 'package:start_project1/features/authentication/screens/home_screen.dart';
import 'package:start_project1/features/authentication/screens/login_screen.dart';
import 'package:start_project1/features/authentication/screens/product_details.dart';
import 'package:start_project1/features/authentication/screens/productitemwidget.dart';
import 'package:start_project1/features/authentication/screens/register_screen.dart';
import 'package:start_project1/features/authentication/screens/splash_screen.dart';
void main() {
  //entry point
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_screen()
    );
  }
}
