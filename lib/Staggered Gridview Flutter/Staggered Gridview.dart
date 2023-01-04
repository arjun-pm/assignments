import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stag_Grid_View(),
  ));
}

class Stag_Grid_View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Staggered Gride View"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Custom_Child(
                        image: "assets/images/night sky.jpg",
                        text: "Mysteries of the U...",
                        title: "20 Jun 2013",
                        subtitle: "Carl Sagan")),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: Custom_Child(
                        image: "assets/images/Empire state building.jpg",
                        text: "An Empire of...",
                        title: "19 Jun 2013",
                        subtitle: "Ernest Hemingway")),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Custom_Child(
                        image: "assets/images/coffee cup.jpg",
                        text: "10 Tip for Hipster T...",
                        title: "10 May 2013",
                        subtitle: "Vincent Van Gogh")),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 3,
                    child: Custom_Child(
                        image: "assets/images/Himalayas.jpg",
                        text: "My Story Climbing...",
                        title: "22 Aug 2013",
                        subtitle: "Thomas Shelby")),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 4,
                    child: Custom_Child(
                        image: "assets/images/rot.jpg",
                        text: "Top 10 Dangerous Do..",
                        title: "20 jun 2013",
                        subtitle: "Dan Sam")),
              ],
            ),
          ),
        ));
  }
}

class Custom_Child extends StatelessWidget {
  final String image;
  final String text;
  final String title;
  final String subtitle;

  Custom_Child(
      {required this.image,
      required this.text,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image(image: AssetImage(image))),
          const SizedBox(
            height: 10,
          ),
          Text(text, style: const TextStyle(fontSize: 18)),
          const SizedBox(
            height: 60,
          ),
          Text(title, style: const TextStyle(color: Colors.grey)),
          const SizedBox(
            height: 3,
          ),
          Text(subtitle, style: const TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}
