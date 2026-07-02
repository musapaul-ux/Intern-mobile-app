import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/screens/loggin.dart';
import 'package:test/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 20),
            Image.network(
              'https://picsum.photos/600/300',
              height: 300,
              width: 200,
            ),

            const SizedBox(height: 32),
            Text(
              " AI powered Legal Assistant",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),
            Text(
              "Quick, relaible and accurate legal information",
              textAlign: TextAlign.center,
            ),

            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Get.to(() => const Login());
                      },
                      child: const Text("Login"),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        
                      ),
                      onPressed: () {
                        Get.to(() => const Register());
                      },
                      child: const Text("Register"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
