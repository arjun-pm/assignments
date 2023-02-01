import 'package:assignments/Tourism%20app%20ui%202/description.dart';
import 'package:flutter/material.dart';

class HotelMainPage extends StatefulWidget {
  const HotelMainPage({Key? key}) : super(key: key);

  @override
  State<HotelMainPage> createState() => _HotelMainPageState();
}

class _HotelMainPageState extends State<HotelMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu_open_outlined, color: Colors.black,size: 33),
        centerTitle: true,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 75),
            child: Row(
              children: const [
                Text(
                  "Go",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Text(
                  "Fast",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Millie.jpg"),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, top: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 60,
                height: 50,
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Places...",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(9.0),
                child: Text(
                  "Popular Places",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Text(
                "View All",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Places(),const SizedBox(height: 80,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                      const EdgeInsets.symmetric(horizontal: 85, vertical: 13)),
                  onPressed: () {},
                  child: const Text(
                    "Explore Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class Places extends StatefulWidget {
  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  @override
  Widget build(BuildContext context) {
    return GridView(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,crossAxisSpacing: 5,
        ),
        children: placedetailsdescription.map((CustomVariable) {
          return GestureDetector(
            onTap: () => gotonext(context, CustomVariable["PlaceImage"]),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Container(
                  height: 280,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              AssetImage("${CustomVariable["PlaceImage"]}"))),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom:10,
                        left: 10,
                        child: Text(
                          "${CustomVariable["PlaceName"]}",
                          style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 25,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue),
                            child: Center(
                              child: Text(
                                "${CustomVariable["Price"]}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),),
                      )
                    ],
                  ),),
            ),
          );
        },).toList());
  }
}

void gotonext(BuildContext context, customVariable) {
  Navigator.of(context).pushNamed("SecondBookingPage", arguments: customVariable);
}
