import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Hotel_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hotel_screen extends StatelessWidget {
  const Hotel_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 300,
                        child: const Image(
                          image: AssetImage(
                              "assets/images/roberto-nickson-emqnSQwQQDo-unsplash.jpg"),
                          fit: BoxFit.cover,
                        )),
                    Container(
                      child: Positioned(
                        bottom: 45,
                        left: 10,
                        child: Column(
                          children: const [
                            Text(
                              "Crowne Plaza",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Kochin,Kerala",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 15,
                      child: Container(
                        height: 15,
                        width: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.grey.shade400,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text("8.4/85 Reviews",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 20,
                      child: Container(
                        child: const Icon(Icons.favorite_border_outlined,
                            color: Colors.white, size: 25),
                      ),
                    ),
                    Positioned(
                      left: 160,
                      top: 30,
                      child: Container(
                        child: const Text(
                          "DETAIL",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                      size: 25,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.purple,
                      size: 25,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.purple,
                      size: 25,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("\$200",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.purple,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.grey,
                      ),
                      Text(
                        "8 to LuluMall",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "/per night",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 45,
                      width: 280,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Book Now"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          elevation: 5,
                          shape: StadiumBorder(),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "DESCRIPTION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 22),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8.0),
                      child: Text(
                          "Welcome to our stunning corner of the valley!Surrounded by both mountain views and a golf course,it doesn’t get more picturesque than this."
                          " We offer  spaces that combine convenience & comfort, allowing for a perfect base from which to enjoy all that this incredible valley has to offer."
                          " At Boschenmeer House, you’ll be met with spaces that hold both a tranquility and an air of exciting potential."
                          " You’ll see not only style, but true home comfort. Light fills this entire space, only adding to the positive energy and slick design choices.",
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                          textAlign: TextAlign.justify),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
