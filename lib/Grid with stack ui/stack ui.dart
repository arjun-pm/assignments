import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_with_stack(),
    debugShowCheckedModeBanner: false,
  ));
}

class Grid_with_stack extends StatelessWidget {
  var images = [
    "assets/images/GoldenGateBridge-001.jpg",
    "assets/images/david-monaghan-J-wEJwSiAbQ-unsplash.jpg",
    "assets/images/anthony-delanoix-QAwciFlS1g4-unsplash.jpg",
    "assets/images/random-institute-0PsefHRQr8g-unsplash.jpg",
    "assets/images/eugene-aikimov-azqdBkIHVo0-unsplash.jpg"
  ];
  var text = ["USA", "England", "France", "Russia", "Canada"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title:const Text("GridView()"),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 5),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(0, 3))
                        ]),
                     child: ClipRRect(
                        child: Image(
                            image: AssetImage(images[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                Positioned(
                  child: Text(text[index],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  bottom: 10,
                  left: 20,
                )
              ],
            );
          },
          itemCount: 5,
        ));
  }
}
