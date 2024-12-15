import 'package:flutter/material.dart';
import 'package:todohive_project/views/sign_in.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 229, 204, 164), Color.fromARGB(255, 193, 158, 235)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.bookmark,
                  size: 36,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                SizedBox(width: 8),
                Text(
                  "TodoHive",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Innovative, user-friendly,\nand easy.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
                decoration: TextDecoration.none,
                fontFamily: "light",
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: const Color.fromARGB(255, 244, 206, 247),
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () => 
                Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (context) =>
                      const SignIn(
                        
                      ),
                  ),
                ),
              child:const Row(
                mainAxisSize: MainAxisSize.min,
                children:[
                  Text(
                    'Get started',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}