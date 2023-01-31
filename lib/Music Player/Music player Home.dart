import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicHome(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicHome extends StatefulWidget {
  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey[900],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book_rounded,
              ),
              label: 'Playlist'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: 'more')
        ],
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Musify.",
          style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent[100]),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Suggested playlists",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[100]),
              ),
            ),
          ),
          Container(
            height: 250,
            width: double.infinity,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 19),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/images/MusicappCar5.jpg"))),
                        child: const Center(
                          child: Text(
                            "CAR MUSIC",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/MusicappRock2.jpg"))),
                        child: const Align(alignment:Alignment.bottomLeft ,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Adrenaline \nRock",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/MusicappRock.jpg"))),
                        child: const Center(
                          child: Text(
                            "COVER SONGS",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 19),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recommended for you",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent[100]),
              ),
            ),
          ),
          SongsTile()
        ],
      ),),
    );
  }
}

class SongsTile extends StatelessWidget {
  final Img = [
    "assets/images/MusicappTyler.webp",
    "assets/images/Musicappunholy-sam-smith.webp",
    "assets/images/MusicappLMU_ALT_COVER_1jpg_grande.webp",
    "assets/images/MusicappDax-depression-uai-258x143.jpg",
    "assets/images/MusicappIm-Good-Blue.jpg",
    "assets/images/MusicappStephen_Sanchez_-_Until_I_Found_You.png",
    "assets/images/MusicappShape_Of_You.png"
  ];
  final Songs = [
    "Hero",
    "Unholy",
    "Lift Me Up",
    "'Depression'",
    "Im Good",
    "Until I Found You",
    "Shape of You"
  ];
  final Singers = [
    "Taylor Swift",
    "Sam Smith,Kim Petras",
    "Rihanna",
    "Dax",
    "David Guetta,Bebe Rexha",
    "Stephen Sanchez",
    "Ed Sheeran"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Img.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 60,
                width: 70,
                color: Colors.blue,
                child: Image(
                    fit: BoxFit.fill, image: AssetImage(Img[index])),
              ),
            ),
            title: Text(
              Songs[index],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent[100]),
            ),
            subtitle: Text(
              Singers[index],
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            trailing: SizedBox(
              height: 30,
              width: 79,
              child: Row(children: [
                const SizedBox(width: 6),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.pinkAccent[100],
                  size: 25,
                ),
                const SizedBox(width: 14),
                Icon(
                  Icons.download_outlined,
                  color: Colors.pinkAccent[100],
                  size: 25,
                )
              ]),
            ),
          );
        });
  }
}
