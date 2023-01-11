import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: My_App(),debugShowCheckedModeBanner: false,)
  );
}

class My_App extends StatefulWidget {
  @override
  State<My_App> createState() => _My_AppState();
}

class _My_AppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Linear and Circular Progress Indicators'),
        backgroundColor: const Color(0xFF4CAF50),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              strokeWidth: 5,value: 0.7,
            ),
            SizedBox(
              height: 55,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.redAccent,
              valueColor: AlwaysStoppedAnimation(Colors.green),
              minHeight: 5,value: 0.5,
            )
          ],
        ),
      ),
    );
  }
}