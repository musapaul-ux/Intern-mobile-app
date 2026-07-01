import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/login.dart';
import 'package:test/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 20),
            Image.network(
              'https://picsum.photos/600/300',
              height: 350,
              width: 300,
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
                    width: 200,
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

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      minimumSize: Size(200, 50),
                    ),
                    onPressed: () {
                      Get.to(() => const Register());
                    },
                    child: const Text("Register"),
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
