
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Image(image: AssetImage("assets/images/lock-g76bcdc74c_1280.png"),height: 300,width: 250),
        const Center(
            child: Text(
              "Welcome!Login with your credentials!",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            )),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your username",
                labelText: "USERNAME",
                prefixIcon: const Icon(Icons.account_box),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ),
        const SizedBox(
          height: 5,
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
        SizedBox(height: 60,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding:
              const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20.0),
              primary: Colors.blue,
              shape: const StadiumBorder(),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),

        const SizedBox(height: 5,),
        const Center(
            child: Text(
              "Dont have an account?Sign UP",
              style: TextStyle(fontSize: 18),
            )),
      ]),
    );
  }
}