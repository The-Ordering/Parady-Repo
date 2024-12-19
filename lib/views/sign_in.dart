import 'package:flutter/material.dart';
import 'package:todohive_project/views/home_screen.dart';
import 'package:todohive_project/views/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:const Color.fromRGBO(191, 200, 85, 1),
        body: Container(
          width: screenWidth * 1,
          height: screenHeight * 1,
          decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Sign_in.png"),
            fit: BoxFit.cover,
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    const SizedBox(height: 130),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: Image.asset("assets/images/HomeScreen.png"),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "TodoHive",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 100),
                      const Text(
                        "Welcome Back!",
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: "semi-bold",
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle:const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed:  () => 
                        Navigator.push(
                        context,
                          MaterialPageRoute(
                            builder: (context) =>
                              const HomeScreen(
                              ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize:const Size(double.infinity, 50),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: (){
            
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          minimumSize:const Size(double.infinity, 50),
                        ),
                        child:const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.g_mobiledata_rounded,
                              size: 40,
                            ),
                            Text(
                              "  Sign in with Google",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              
                            },
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account? "
                                ),
                                ElevatedButton(
                                  onPressed: () => 
                                    Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                          const SignUp(
                                            
                                          ),
                                      ),
                                    ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white.withOpacity(0.5),
                                  ),
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 200),
                      const Text(
                        "Join our new beta program to test\nour new experimental feature",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          height: 1.5,
                          fontFamily: "light",
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), 
      ),
    );
  }
}