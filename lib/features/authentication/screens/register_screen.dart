import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/home_screen.dart';
import 'package:start_project1/features/authentication/screens/login_screen.dart';
class Register_screen extends StatelessWidget {
  const Register_screen({super.key});
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: screenwidth,
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  "assets/images/vector.png",
                  width: 250,
                  height: 250,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Let’s Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Color(0xff223263),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Create an new account",
                  style: TextStyle(
                    color: Color(0xff9098B1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffEBF0FF),
                    )),
                    prefixIcon: Icon(
                      Icons.account_circle,
                      size: 30,
                    ),
                    hintText: "Full Name ",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffEBF0FF),
                    )),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      size: 30,
                    ),
                    hintText: "Your Email",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffEBF0FF),
                    )),
                    suffixIcon: Icon(
                      Icons.visibility,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 30,
                    ),
                    hintText: "Password ",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffEBF0FF),
                    )),
                    suffixIcon: Icon(
                      Icons.visibility,
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      size: 30,
                    ),
                    hintText: "Password Again",
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context){
                        return home_screen();
                      },
                      ),
                    );},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0XFF40BFFF),
                        fixedSize: Size(screenwidth, 57)),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "have an account?",
                      style:  TextStyle(
                        color: Color(0xff9098B1),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    InkWell(
                      splashColor: const Color(0xff40BFFF),
                      hoverColor: Colors.cyan,
                      onTap: () {Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context){
                          return login_screen();
                        },
                        ),
                      );},
                      child: const Text(
                        " Sign In",
                        style: TextStyle(
                          color: Color(0xff40BFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
