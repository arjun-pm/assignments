import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Subscribtion extends StatelessWidget {
  const Subscribtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              child: Row(
                children: [
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/images/playpop.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sidemen",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/images/Profile ui 2 image.webp"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "DoctorMike",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage("assets/images/Millie.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Millie",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/images/PlayTIKTOK.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tik Tok",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: const [
                      CircleAvatar(
                        radius: 32,
                        backgroundImage:
                            AssetImage("assets/images/PlayTop50.jpg"),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Top 50",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
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
                      "Today",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 130,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.grey.shade800),
                      color: Colors.grey.shade900),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      "Continue Watching",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 90,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.grey.shade800),
                      color: Colors.grey.shade900),
                  child: const Padding(
                    padding: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      "Unwatched",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
                              fontSize: 20),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Sidemen . 20M views . 1 year ago",
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
                        child: Text("19:25",
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: const [
                SizedBox(
                    height: 30,
                    width: 30,
                    child: Image(
                        image: AssetImage(
                            "assets/images/YTYoutube_shorts_icon-png-sdfj3.png"))),
                Text(
                  "Shorts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 235),
                Text(
                  "View All",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10),
            ShortsThumb(),
          ],
        ),
      ),
    );
  }
}

class ShortsThumb extends StatelessWidget {
  var images = [
    "assets/images/GoldenGateBridge-001.jpg",
    "assets/images/Himalayas.jpg",
    "assets/images/rohith.jpg"
  ];
  var texts = [
    "Golden Gate\n21k Views",
    "Himalayas\n15k Views",
    "Rohith sharma\n30k Views"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 0,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: SizedBox(
                      width: 150,
                      height: double.infinity,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage(images[index]),
                      )),
                ),
                Positioned(
                  left: 5,
                  bottom: 10,
                  child: Text(
                    texts[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
