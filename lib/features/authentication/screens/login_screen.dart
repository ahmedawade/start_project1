import 'package:flutter/material.dart';
import 'package:start_project1/features/authentication/screens/home_screen.dart';
import 'package:start_project1/features/authentication/screens/register_screen.dart';
import 'package:start_project1/utils/app_colors.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: const EdgeInsets.all(16.0),
              width: MediaQuery.sizeOf(context).width,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/vector.png"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "wellcome to lafyuu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff223263),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Text(
                      "Sign in to continue",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9098B1),
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          size: 30.0,
                        ),
                        //  labelText:"Your Email" ,
                        hintText: "Your Email",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.indigo, width: 1)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.indigo,
                          width: 1,
                        )),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          size: 30.0,
                        ),
                        suffix: Icon(Icons.visibility),
                        hintText: "password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //     ),
                    // borderRadius: BorderRadius.circular(4),
                    //   ),child: TextFormField(
                    //   decoration: InputDecoration(
                    //     hintText: "email",
                    //   ),
                    // ),
                    // ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context){
                            return home_screen();
                          },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:  Appcolors.primarycolor,
                        fixedSize: Size(MediaQuery.sizeOf(context).width, 57.0),
                        // maximumSize: Size(16.0, 12.0),
                      ),
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                          color:  Appcolors.backgroundcolor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            color:  Appcolors.primarycolor,
                            height: 1,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 8,
                            ),
                            child: (const Text("OR")),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color:  Appcolors.primarycolor,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextButton.icon(
                      icon: const Icon(Icons.facebook),
                      onPressed: () { {Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context){
                          return home_screen();
                        },
                        ),
                      );}},
                      label: const Text(
                        "Login with Facebook",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffEBF0FF),
                          fixedSize:
                              Size(MediaQuery.sizeOf(context).width, 57.0)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    TextButton.icon(
                      icon: const Icon(Icons.facebook),
                      onPressed: () { {Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context){
                          return home_screen();
                        },
                        ),
                      );}},
                      label: const Text(
                        "Login with Google",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffEBF0FF),
                          fixedSize:
                              Size(MediaQuery.sizeOf(context).width, 57.0)),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    InkWell(
                      hoverColor: Colors.cyan,
                      splashColor: Colors.red,
                      onTap: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff40BFFF)),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have a account?  ",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        GestureDetector(
                          onTap: () {Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context){
                              return Register_screen();
                            },
                            ),
                          );},

                          child: const Text(
                            "Register",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff40BFFF)),
                          ),
                        ),
                      ],
                    )
                  ], //children
                ),
              ),
            ),
          ),
        ),
    );
  }
}
