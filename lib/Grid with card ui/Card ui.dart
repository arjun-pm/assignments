import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_with_builder(),
  ));
}

class Grid_with_builder extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.amber,
  ];
  var icons = const [
    Icon(Icons.home),
    Icon(Icons.doorbell),
    Icon(Icons.camera),
    Icon(Icons.star),
    Icon(Icons.wifi),
    Icon(Icons.book),
    Icon(Icons.phone),
    Icon(Icons.email),
    Icon(Icons.facebook),
    Icon(Icons.person),
    Icon(Icons.mic),
    Icon(Icons.bookmark),
  ];
  var text = const [
    "Home",
    "Bell",
    "Camera",
    "Star",
    "wifi",
    "Book",
    "Phone",
    "Email",
    "Facebook",
    "Person",
    "Mic",
    "Bookmark",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 80,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5),
          itemCount: 12,
          itemBuilder: (context, index) {
            return Container(
                margin: const EdgeInsets.all(4),
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3))
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: colors[index]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(text[index],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    icons[index],
                  ],
                ));
          }),
    );
  }
}
