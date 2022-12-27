import 'package:assignments/login%20and%20signup%20ui/loginPage.dart';
import 'package:assignments/login%20and%20signup%20ui/sign%20up%20page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children:  [
            const SizedBox(
              height: 70,
            ),
            const Center(
                child:  Text(
                  "Hello",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "Please verify your self",
                style: TextStyle(fontSize: 15,color: Colors.grey),
              ),
            ),
            const Image(image: AssetImage("assets/images/Wavy_Bus-05_Single-11.jpg"),height: 300,width: 200),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:  ElevatedButton(
                onPressed: () {  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
                  primary: Colors.blue,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  SignupPage()));},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 15.0),
                  primary: Colors.red,
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Sign UP",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}