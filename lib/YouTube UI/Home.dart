import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homeui extends StatelessWidget {
  const Homeui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/icons8-youtube.svg",
          ),
        ),
        titleSpacing: 10,
        title: const Text(
          "YouTube",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: [
          Row(
            children: [
              const Icon(
                Icons.cast,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.doorbell_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              const Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 30,
                  height: 30,
                  child: CircleAvatar(
                    child: Stack(children: const [
                      Text(
                        "A",
                        style: TextStyle(color: Colors.white),
                      )
                    ]),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.shade900,
                  ),
                  height: 30,
                  width: 40,
                  child: const Icon(
                    Icons.south_america_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 30,
                width: 2,
                color: Colors.grey.shade900,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade800),
                    color: Colors.grey.shade900),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "News",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade800),
                    color: Colors.grey.shade900),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "Laughter",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade800),
                    color: Colors.grey.shade900),
                child: const Padding(
                  padding: EdgeInsets.only(top: 5, left: 10),
                  child: Text(
                    "Gaming",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 270,
            width: double.infinity,
            color: Colors.black87,
            child: Stack(
              children: [
                const Image(
                  image: AssetImage("assets/images/YTsidemanthumbnaile.webp"),
                ),
                const Positioned(
                  bottom: 18,
                  left: 8,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/playpop.jpg"),
                  ),
                ),
                Positioned(
                  left: 60,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "1 Men vs 20 Women | Harry Edition",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Sidemen . 20M views . 1 year ago",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 75,
                  child: Container(
                    color: Colors.black,
                    width: 30,
                    height: 15,
                    child: const Padding(
                      padding: EdgeInsets.all(1),
                      child: Text("19:25",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 270,
            width: double.infinity,
            color: Colors.black87,
            child: Stack(
              children: [
                const Image(
                  image: AssetImage("assets/images/YTmikethumbnile.jpg"),
                ),
                const Positioned(
                  bottom: 18,
                  left: 8,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Profile ui 2 image.webp"),
                  ),
                ),
                Positioned(
                  left: 60,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Editor Roast Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Doctor Mike . 3.2M views . 1 year ago",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 75,
                  child: Container(
                    color: Colors.black,
                    width: 30,
                    height: 15,
                    child: const Padding(
                      padding: EdgeInsets.all(1),
                      child: Text("10:30",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 270,
            width: double.infinity,
            color: Colors.black87,
            child: Stack(
              children: [
                const Image(
                  image: AssetImage("assets/images/night sky.jpg"),
                ),
                const Positioned(
                  bottom: 18,
                  left: 8,
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/Profile ui 2 image.webp"),
                  ),
                ),
                Positioned(
                  left: 60,
                  bottom: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Editor Roast Me",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Doctor Mike . 3.2M views . 1 year ago",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 75,
                  child: Container(
                    color: Colors.black,
                    width: 30,
                    height: 15,
                    child: const Padding(
                      padding: EdgeInsets.all(1),
                      child: Text("10:30",
                          style: TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
