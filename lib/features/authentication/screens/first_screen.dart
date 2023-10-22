import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/login_screen.dart';
import 'package:start_project1/utils/app_colors.dart';

class first_screen extends StatelessWidget {
  const first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Appcolors.primarycolor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/vector.png",
                width: 200,
                height: 200,
              ),
              //text
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "wellcome to lafu",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  color: Appcolors.backgroundcolor,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) {
                        return const login_screen();
                      },
                    ),
                  );
                },
                child: const Text(
                  "sign in to coninue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.backgroundcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
