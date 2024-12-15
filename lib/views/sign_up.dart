import 'package:flutter/material.dart';
import 'package:todohive_project/views/sign_in.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromRGBO(191, 200, 85, 1),
        body: Container(
          decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 229, 204, 164), Color.fromARGB(255, 193, 158, 235)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(height: 120),
                  Icon(
                    Icons.bookmark,
                    size: 16,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  SizedBox(width: 8),
                  Text(
                    "TodoHive",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "semi-bold",
                      ),
                    ),
                    ClipOval(
                      child: Image.network(
                      "https://images.pexels.com/photos/29665824/pexels-photo-29665824/free-photo-of-cute-cartoon-face-hat-on-textured-stone-surface.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
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
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: const TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.4),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
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
                    const SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
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
                      onPressed: () {
                        
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        minimumSize:const Size(double.infinity, 50),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        
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
                          Icon(Icons.gps_off_sharp),
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
                                "Already have an account? "
                              ),
                              ElevatedButton(
                                onPressed: () => 
                                  Navigator.push(
                                  context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                        const SignIn(
                                          
                                        ),
                                    ),
                                  ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white.withOpacity(0.5),
                                ),
                                child: const Text(
                                  "Sign In",
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
                    const SizedBox(height: 110),
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
    );
  }
}