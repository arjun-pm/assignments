import 'package:flutter/material.dart';
import 'Login and SingupPage.dart';

class Home extends StatelessWidget {
  final data;

  const Home({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = data[0]['name'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Welcome $name"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text('Success',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login_Signup(),));
          }, child: const Text("Logout"))
        ],
      ),
    );
  }
}