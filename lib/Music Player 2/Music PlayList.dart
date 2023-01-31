import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MusicPlayer(),
    debugShowCheckedModeBanner: false,
  ));
}

class MusicPlayer extends StatefulWidget {
  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.grey[900],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
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
              label: 'Playlist',
            icon: Icon(
              Icons.playlist_add,
            ),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: 'more')
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Playlists",
          style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent[100]),
        ),
      ),
      body: ListView(children: [
        Column(children: [
          Container(
            height: 50,
            width: 330,
            decoration: BoxDecoration(
                border: Border.all(width: 0.3,color: Colors.white) ,
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(28)),
            child:  Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 4,
                right: 8,
              ),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Search...",
                    hintStyle: TextStyle(fontSize: 18.0, color: Colors.pinkAccent[100]),
                    suffixIcon: Icon(
                      Icons.search,
                      color: Colors.pinkAccent[100],
                    ),),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(children: [MusicList()]),
          )
        ]),
      ]),
    );
  }
}

class MusicList extends StatelessWidget {
  List PlaylistImages = [
    "assets/images/PlayTop50.jpg",
    "assets/images/playPop2.jpg",
    "assets/images/PlayLofi.jpg",
    "assets/images/playRap.jpg",
    "assets/images/PlayCarmusic.jpg",
    "assets/images/PlayTIKTOK.jpg",
    "assets/images/PlayMelody.jpg",
    "assets/images/playpop.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: PlaylistImages.length,
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 4,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(17.0),
          child: Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  fit: BoxFit.cover, image: AssetImage(PlaylistImages[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}