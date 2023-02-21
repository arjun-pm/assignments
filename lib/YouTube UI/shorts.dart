import 'package:flutter/material.dart';

class Shorts extends StatelessWidget {
  const Shorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/YTshortsimage.jpg"),
              fit: BoxFit.fill),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 5,
              top: 40,
              child: Row(
                children: const [
                  Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.camera_enhance_outlined,
                      color: Colors.white, size: 30),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.add, color: Colors.white, size: 30)
                ],
              ),
            ),
            Positioned(
              bottom: 18,
              right: 10,
              child: Column(
                children: const [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image(image: AssetImage("assets/images/YTlike.png")),
                  ),
                  Text(
                    "66k",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child:
                        Image(image: AssetImage("assets/images/YTdislike.png")),
                  ),
                  Text(
                    "Dislike",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Icon(
                    Icons.message,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    "1.5k",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Icon(
                    Icons.share,
                    size: 35,
                    color: Colors.white,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    height: 35,
                    width: 40,
                    child: Image(
                        image: AssetImage("assets/images/playpop.jpg"),
                        fit: BoxFit.fill),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/playpop.jpg"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "@NatureEdits",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        height: 20,
                        width: 60,
                        color: Colors.red,
                        child: const Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            "Subscribe",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        "Amazing mobile edits",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
