import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_with_stackk(),
  ));
}

class Grid_with_stackk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.more_vert)],
        leading: const Icon(Icons.menu_outlined),
        title: const Text("Profile"),
        titleSpacing: 100,
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            height: 400,
            width: 400,
            child: const Image(image: AssetImage("assets/images/virat cover")),
          ),
          Positioned(
            right: 4,
            left: 10,
            bottom: 3,
            top: 6,
            child: ClipRRect(
                child: Center(
              child: Container(
                height: 170,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(120),
                  child: const Image(
                    image: AssetImage("assets/images/virat.jpg"),
                  ),
                ),
              ),
            )),
          ),
          Positioned(
              bottom: 175,
              left: 20,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: const Icon(
                    Icons.message,
                    color: Colors.white,
                  ),
                ),
              )),
          Positioned(
            bottom: 175,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 60,
              left: 128,
              child: Column(
                children: const [
                  Text(
                    "Virat Kohli",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Model/Cricketer",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
