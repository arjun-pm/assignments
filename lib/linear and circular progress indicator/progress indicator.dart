import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),debugShowCheckedModeBanner: false,)
  );
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circular and Linear Progress Indicator'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(
              height: 55,
            ),
            LinearProgressIndicator(),
          ],
        ),
      ),
    );
  }
}