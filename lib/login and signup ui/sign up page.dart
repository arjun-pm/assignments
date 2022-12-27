import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignupPageState();
}

class _SignupPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Image(image:AssetImage("assets/images/user-account-login-icon.png"),height: 200,width: 200, ),
            const SizedBox(height: 20,),
            const Text(
              "Create an account free",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your email",
                    labelText: "EMAIL",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "PASSWORD",
                    prefixIcon: const Icon(Icons.account_box),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "CONFIRM PASSWORD",
                    prefixIcon: const Icon(Icons.account_box),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding:
                  const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
                  shape: const StadiumBorder(),
                ),
              ),
            ),
            const Text("Already have an account?Login"),
          ],
        ),
      ),
    );
  }
}